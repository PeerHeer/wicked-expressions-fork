from wicked_expressions:api import Scoreboard, Data


objective_0 = Scoreboard('objective_0')
storage_0 = Data.storage('test:storage_0')
score_0 = objective_0['$score_0']
data_0 = storage_0['data_0']
entitydata_0 = Data.entity('@s')['nbt_path']


with score_0.store():
    time query gametime

with score_0.store(mode='success'):
    time query gametime

with data_0.store():
    time query gametime

with data_0.store(mode='success', scale=69):
    time query gametime

with data_0.store(type='float', scale=0.5):
    time query gametime

with entitydata_0.store(scale=10):
    time query gametime

store result score score_0.holder score_0.obj:
    entitydata_0.get()



function ./eq_overload_pls_no_break_test:
    if data_0:
        say hello








