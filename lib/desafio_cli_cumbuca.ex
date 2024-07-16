defmodule DesafioCliCumbuca do
  @usage_message """
  Ferramenta de linha de comando que recebe uma lista de reis e rainhas de Cumbúquia
  e retorna os mesmos nomes com a devida numeração romana.

  Uso:
  1. Execute o binário.
  2. Escolha entre ler a lista de nomes de um arquivo ou inserir manualmente.
  3. Se escolher o arquivo, pode inserir o caminho do arquivo ou pressionar Enter para usar o padrão 'nomes.txt'.
  4. Se escolher manual, insira uma lista de nomes, um por linha.
  5. Insira uma linha em branco para finalizar a lista.
  6. A ferramenta irá retornar os nomes numerados conforme necessário.

  Exemplo:
  Entrada:
  Eduardo
  Maria
  Daniel
  Eduardo

  Saída:
  Eduardo I
  Maria I
  Daniel I
  Eduardo II
  """

  def main(args \\ []) do
    IO.puts @usage_message
    case args do
      ["--help" | _] ->
        :ok
      _ ->
        start()
    end
  end

  defp start do
    IO.puts "Bem-vindo à Ferramenta de Realeza!"
    loop()
  end

  defp loop do
    IO.puts "Escolha uma opção:"
    IO.puts "1. Ler nomes de um arquivo padrão ('nomes.txt')"
    IO.puts "2. Ler nomes de um arquivo específico"
    IO.puts "3. Inserir nomes manualmente"
    IO.puts "4. Sair"

    option = IO.gets("Opção: ") |> String.trim()

    case option do
      "1" ->
        names = read_names_from_file("nomes.txt")
        print_and_continue(names)

      "2" ->
        file_path = IO.gets("Insira o caminho do arquivo: ") |> String.trim()
        names = read_names_from_file(file_path)
        print_and_continue(names)

      "3" ->
        IO.puts "\nInsira a lista de nomes, um por linha. Deixe uma linha em branco para finalizar:\n"
        names = read_names_from_input()
        print_and_continue(names)

      "4" ->
        IO.puts "Encerrando o programa."
        :ok

      _ ->
        IO.puts "Opção inválida. Tente novamente.\n"
        loop()
    end
  end

  defp read_names_from_file(file_path) do
    case File.read(file_path) do
      {:ok, content} ->
        content
        |> String.split("\n")
        |> Enum.map(&String.trim/1)
        |> Enum.reject(&(&1 == ""))
      {:error, reason} ->
        IO.puts "Erro ao ler o arquivo: #{reason}"
        []
    end
  end

  defp read_names_from_input do
    read_names([], IO.gets("") |> String.trim())
  end

  defp read_names(acc, "") do
    Enum.reverse(acc)
  end

  defp read_names(acc, name) do
    read_names([name | acc], IO.gets("") |> String.trim())
  end

  def enumerate_names(names, acc) do
    Enum.map_reduce(names, acc, fn name, acc ->
      count = Map.get(acc, name, 0) + 1
      roman_numeral = to_roman(count)
      acc = Map.put(acc, name, count)
      {"#{name} #{roman_numeral}", acc}
    end)
    |> elem(0)
  end

  def to_roman(number) do
    roman_numerals = [
      {1000, "M"}, {900, "CM"}, {500, "D"}, {400, "CD"}, {100, "C"}, {90, "XC"},
      {50, "L"}, {40, "XL"}, {10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"}
    ]

    Enum.reduce(roman_numerals, {number, ""}, fn {value, numeral}, {num, acc} ->
      count = div(num, value)
      new_num = rem(num, value)
      {new_num, acc <> String.duplicate(numeral, count)}
    end)
    |> elem(1)
  end

  defp print_and_continue(names) do
    enumerated_names = enumerate_names(names, %{})
    Enum.each(enumerated_names, &IO.puts/1)
    IO.puts ""
    continue_or_exit()
  end

  defp continue_or_exit do
    IO.puts "Deseja continuar? (s/n)"
    case IO.gets("") |> String.trim() do
      "s" -> loop()
      "n" -> IO.puts "Encerrando o programa."
      _ -> 
        IO.puts "Opção inválida. Encerrando o programa."
    end
  end
end

