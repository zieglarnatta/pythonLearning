word = "bottles"

while True:
    user_input = input(
        "Enter an integer between 0 and 99 for bottles of beer "
        "(or type 'quit'): "
    )

    if user_input.lower() == "quit":
        print("Goodbye!")
        break

    try:
        user_input_number = int(user_input)
    except ValueError:
        print("Please enter a valid integer.")
        continue

    if not 0 <= user_input_number <= 99:
        print("Enter a number between 0 and 99.")
        continue

    for beer_num in range(user_input_number, 0, -1):
        current_word = "bottle" if beer_num == 1 else "bottles"

        print(f"{beer_num} {current_word} of beer on the wall.")
        print(f"{beer_num} {current_word} of beer.")
        print("Take one down, pass it around.")

        new_num = beer_num - 1

        if new_num == 0:
            print("No more bottles of beer on the wall.")
        else:
            next_word = "bottle" if new_num == 1 else "bottles"
            print(f"{new_num} {next_word} of beer on the wall.")

        print()

    break
