Imagine you (as a player) are carrying an apple, and you enter a room with a (computer character) beggar.  The beggar hits you, you drop the apple, the beggar picks it up, runs out of the room, and hungrily eats the apple.  This is fairly straightforward and doesn't require a lot of "thought" on the part of the game.  To construct a plan, the beggar has to consider his own external state (what he has, where he is, ...), his internal state (motivations, condition, abilities, ...), your external state, your internal state, and the world's state in his decisions, along with what could fail during the execution of his plan.  Reasoning that if the beggar hit you, you would be distracted, allowing the beggar to 

Thinking ahead a little can help the beggar come up with better plans.

Now, imagine you are carrying an apple, another player has a steak sandwich, and both of you enter a room with 3 beggars, one is big and slow, one is small and fast, but cowardly, and one is physically average, but cunning.  As you both grab your weapons with your free hands, the big and slow one advances toward the other player and makes a grab at the steak, the fast one goes for your apple, and the cunning one prepares to knock out the fast one.  The big beggar hits the other player, the small beggar pleads, "I didn't mean nuthin by it, mister...".  The cunning beggar pushes the small one into you.  The big beggar hits the other player, who drops the apple, but strikes the big beggar.  You drop the apple as you and the small beggar recover your balance and the cunning beggar grabs it and runs out of the room.

Coming up with a plan for one of the beggars can get complicated when there are a lot of alternatives.  One way to do this is to make an alternate world model for each potential alternative and explore the possibilities concurrently.  This makes a "tree" of derivatives of the current world.  After the thinking is done, the resulting plan can be a simple decision tree that only involves external state.

Both Intel and Nvidia plan to release 12 core CPUs for desktops in 2012.  CPUs aren't getting much faster, but we're getting more and more cores.  Concurrent programming with shared memory is complex and difficult in traditional languages, so much so that some people advocate a "shared nothing" approach, like WebWorkers, which communicates using only copied data.  This is one way to eliminate the problems of concurrency with shared memory -- eliminate the shared memory.  Functional programming techniques allow safe shared memory with concurrency.