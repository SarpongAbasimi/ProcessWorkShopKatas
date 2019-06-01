<h1 align='center'>
  Scrabble_solver
</h1>


> To run the kata.
- Fork the repo.
- clone the repo.
- cd in directory.
- run rspec.

> Aim Of The Chalenge.

- Given a word, compute the scrabble score for that word.

<img width="837" alt="Screen Shot 2019-06-01 at 15 25 43" src="https://user-images.githubusercontent.com/37377831/58749744-a0818080-8481-11e9-815b-b6a54c2eb96d.png">

<img width="832" alt="Screen Shot 2019-06-01 at 15 25 55" src="https://user-images.githubusercontent.com/37377831/58749752-b2fbba00-8481-11e9-9291-0686c2536550.png">


<h4 align="center">
  Approach
</h4>

> I started by writing the simplest code posssible.

<img width="690" alt="Screen Shot 2019-06-01 at 15 20 01" src="https://user-images.githubusercontent.com/37377831/58749757-c27b0300-8481-11e9-9a87-1412af9848d6.png">

> Went on the write the code for it.


<img width="682" alt="Screen Shot 2019-06-01 at 15 20 33" src="https://user-images.githubusercontent.com/37377831/58749762-d45ca600-8481-11e9-93c4-daaea1a6d931.png">

> Next step was to calculate the score for one ``a`` and the two `aa`.

<img width="635" alt="Screen Shot 2019-06-01 at 15 29 04" src="https://user-images.githubusercontent.com/37377831/58749798-3ddcb480-8482-11e9-802e-946dca6bb151.png">


> I went ahead and did this.

<img width="653" alt="Screen Shot 2019-06-01 at 15 29 36" src="https://user-images.githubusercontent.com/37377831/58749802-649aeb00-8482-11e9-8cf7-9b8d6948e5cc.png">

> Then implemented the solution.

<img width="632" alt="Screen Shot 2019-06-01 at 15 29 57" src="https://user-images.githubusercontent.com/37377831/58749812-872d0400-8482-11e9-9c7c-986ac9c2b877.png">

> To check if a word is valid a refactored the code to user an ``is_valid?`` method.

<img width="643" alt="Screen Shot 2019-06-01 at 15 35 30" src="https://user-images.githubusercontent.com/37377831/58749842-eb4fc800-8482-11e9-8308-60b7a2e6977d.png">

> To get the total score I created a method called ``score`` to return the ``scores``

<img width="636" alt="Screen Shot 2019-06-01 at 15 37 42" src="https://user-images.githubusercontent.com/37377831/58749879-3bc72580-8483-11e9-935b-4575862c8489.png">