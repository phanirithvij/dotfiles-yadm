function serfinfo
serf members
ip route get 1 | awk '{print $(NF-2);exit}'
serf info
end
