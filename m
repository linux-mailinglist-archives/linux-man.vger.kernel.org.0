Return-Path: <linux-man+bounces-1580-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C3F948CDE
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 12:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76E98286C86
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 10:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E55421BDAA6;
	Tue,  6 Aug 2024 10:34:09 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2845815A4AF
	for <linux-man@vger.kernel.org>; Tue,  6 Aug 2024 10:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722940449; cv=none; b=NoRryWtz+E+C7AWCHOvCMKdQDb4ItOODT/nsuuuyDQkIsacDLHyibO/oLLsonzyuf0jeTuJ1NmUcMjRrkH2hr0Cb7Lpo9+tw/AjgNg+hvDsuo+dl/Z1UATsI61gyHB2kiDWQZXguy+nq9DNVy7fPF2B/E7jZxeszRDo1IuInhS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722940449; c=relaxed/simple;
	bh=OwSzNDXVC3oTyOP1IOWQJ049heuXJd38uogJSmyfEiw=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=sFpubZ96CVQcKbpnwFqiYd1y13KccFWdRMHJuiYbBnBisbbZ1Necqh5BUKh36hOEgfETyw4uxiwxqkZd7A3qEPTMWBkVuEtYYc2esILkvAZWsH8XxLznWgxQGNcvZR2YhYlv6snqqUsTFORPZQwhqlHBjSra2mM+Hqd701ndNmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4WdV2m5DP7z67SS7;
	Tue,  6 Aug 2024 18:31:12 +0800 (CST)
Received: from lhrpeml500004.china.huawei.com (unknown [7.191.163.9])
	by mail.maildlp.com (Postfix) with ESMTPS id 1D223140B35;
	Tue,  6 Aug 2024 18:34:03 +0800 (CST)
Received: from [10.123.123.200] (10.123.123.200) by
 lhrpeml500004.china.huawei.com (7.191.163.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 6 Aug 2024 11:34:02 +0100
Message-ID: <b684e2c4-ccb5-4402-ad2d-0eb99db1b57b@huawei.com>
Date: Tue, 6 Aug 2024 13:34:01 +0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
Content-Language: ru
To: Alejandro Colomar <alx@kernel.org>
CC: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>,
	=?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
	<linux-man@vger.kernel.org>, Artem Kuzin <artem.kuzin@huawei.com>, yusongping
	<yusongping@huawei.com>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <7558cd6d-199d-608e-ee18-293036461526@huawei.com>
 <rvzol7iujgcb22fd6wcfohtjkpnpdsjyzlxx7uecdhw5od4t7a@dtzcxfwonjyq>
From: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
In-Reply-To: <rvzol7iujgcb22fd6wcfohtjkpnpdsjyzlxx7uecdhw5od4t7a@dtzcxfwonjyq>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: lhrpeml500004.china.huawei.com (7.191.163.9) To
 lhrpeml500004.china.huawei.com (7.191.163.9)



8/6/2024 1:19 PM, Alejandro Colomar пишет:
> Hi Konstantin,
> 
> You didn't write anything in this message, right?  Was it an accident?

  Sorry. I wrote a message but did it on the same line with the patch 
code. Here below I rewrite it.
> 
> Have a lovely day!
> Alex
> 
> On Tue, Aug 06, 2024 at 11:38:57AM GMT, Konstantin Meskhidze (A) wrote:
>> 
>> 
>> 7/23/2024 1:19 PM, Günther Noack пишет:
>> > Landlock ABI 4 restricts bind(2) and connect(2) on TCP port numbers.
>> > 
>> > The intent is to bring the man pages mostly in line with the kernel
>> > documentation again.  I intentionally did not add networking support to the
>> > usage example in landlock.7 - I feel that in the long run, we would be better
>> > advised to maintain longer example code in the kernel samples.
>> > 
>> > Closes: <https://github.com/landlock-lsm/linux/issues/32>
>> > Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
>> > Reviewed-by: Mickaël Salaün <mic@digikod.net>
>> > Signed-off-by: Günther Noack <gnoack@google.com>
>> > ---
>> >   man/man2/landlock_add_rule.2       | 74 ++++++++++++++++++++++++++----
>> >   man/man2/landlock_create_ruleset.2 | 12 ++++-
>> >   man/man7/landlock.7                | 23 ++++++++--
>> >   3 files changed, 94 insertions(+), 15 deletions(-)
>> > 
>> > diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
>> > index 7a83bb303..489e9c354 100644
>> > --- a/man/man2/landlock_add_rule.2
>> > +++ b/man/man2/landlock_add_rule.2
>> > @@ -20,15 +20,14 @@ Standard C library
>> >   .BI "            const void *" rule_attr ", uint32_t " flags );
>> >   .fi
>> >   .SH DESCRIPTION
>> > -A Landlock rule describes an action on an object.
>> > -An object is currently a file hierarchy,
>> > -and the related filesystem actions
>> > -are defined with a set of access rights.
>> > -This
>> > +A Landlock rule describes an action on an object
>> > +which the process intends to perform.
>> > +A set of rules is aggregated in a ruleset,
>> > +which can then restrict the thread enforcing it, and its future children.
>> > +.P
>> > +The
>> >   .BR landlock_add_rule ()
>> > -system call enables adding a new Landlock rule to an existing ruleset
>> > -created with
>> > -.BR landlock_create_ruleset (2).
>> > +system call adds a new Landlock rule to an existing ruleset.
>> >   See
>> >   .BR landlock (7)
>> >   for a global overview.
>> > @@ -42,10 +41,15 @@ identifies the structure type pointed to by
>> >   .IR rule_attr .
>> >   Currently, Linux supports the following
>> >   .I rule_type
>> > -value:
>> > +values:
>> >   .TP
>> >   .B LANDLOCK_RULE_PATH_BENEATH
>> > -This defines the object type as a file hierarchy.
>> > +For these rules,
>> > +the object is a file hierarchy,
>> > +and the related filesystem actions
>> > +are defined with
>> > +.IR "filesystem access rights" .
>> > +.IP
>> >   In this case,
>> >   .I rule_attr
>> >   points to the following structure:
>> > @@ -74,6 +78,45 @@ is an opened file descriptor, preferably with the
>> >   flag,
>> >   which identifies the parent directory of the file hierarchy or
>> >   just a file.
>> > +.TP
>> > +.B LANDLOCK_RULE_NET_PORT
>> > +For these rules,
>> > +the object is a TCP port,
>> > +and the related actions are defined with
>> > +.IR "network access rights" .
>> > +.IP
>> > +In this case,
>> > +.I rule_attr
>> > +points to the following structure:
>> > +.IP
>> > +.in +4n
>> > +.EX
>> > +struct landlock_net_port_attr {
>> > +    __u64 allowed_access;
>> > +    __u64 port;
>> > +};
>> > +.EE
>> > +.in
>> > +.IP
>> > +.i allowed_access
>> > +contains a bitmask of allowed network actions,
>> > +which can be applied on the given port.
>> > +.IP
>> > +.i port
>> > +is the network port in host endianness.
>> > +.IP
>> > +It should be noted that port 0 passed to
>> > +.BR bind (2)
>> > +will bind to an available port from the ephemeral port range.
>> > +This can be configured in the
>> > +.I /proc/sys/net/ipv4/ip_local_port_range
>> > +sysctl (also used for IPv6).
>> > +.IP
>> > +A Landlock rule with port 0
>> > +and the
>> > +.B LANDLOCK_ACCESS_NET_BIND_TCP
>> > +right means that requesting to bind on port 0 is allowed
>> > +and it will automatically translate to binding on the related port range.
>> >   .P
>> >   .I flags
>> >   must be 0.
>> > @@ -89,6 +132,12 @@ is set to indicate the error.
>> >   .BR landlock_add_rule ()
>> >   can fail for the following reasons:
>> >   .TP
>> > +.B EAFNOSUPPORT
>> > +.I rule_type
>> > +is
>> > +.BR LANDLOCK_RULE_NET_PORT ,
>> > +but TCP is not supported by the running kernel.
>> > +.TP
>> >   .B EOPNOTSUPP
>> >   Landlock is supported by the kernel but disabled at boot time.
>> >   .TP
>> > @@ -111,6 +160,11 @@ are only applicable to directories, but
>> >   .I \%rule_attr\->parent_fd
>> >   does not refer to a directory).
>> >   .TP
>> > +.B EINVAL
>> > +In
>> > +.IR \%struct\~landlock_net_port_attr ,
>> > +the port number is greater than 65535.
>> > +.TP
>> >   .B ENOMSG
>> >   Empty accesses (i.e.,
>> >   .I rule_attr\->allowed_access
>> > diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
>> > index 105e9b062..ca635ddbc 100644
>> > --- a/man/man2/landlock_create_ruleset.2
>> > +++ b/man/man2/landlock_create_ruleset.2
>> > @@ -41,6 +41,7 @@ It points to the following structure:
>> >   .EX
>> >   struct landlock_ruleset_attr {
>> >       __u64 handled_access_fs;
>> > +    __u64 handled_access_net;
>> >   };
>> >   .EE
>> >   .in
>> > @@ -52,6 +53,13 @@ is a bitmask of handled filesystem actions
>> >   in
>> >   .BR landlock (7)).
>> >   .IP
>> > +.I handled_access_net
>> > +is a bitmask of handled network actions
>> > +(see
>> > +.B Network actions
>> > +in
>> > +.BR landlock (7)).
>> > +.IP
>> >   This structure defines a set of
>> >   .IR "handled access rights" ,
>> >   a set of actions on different object types,
>> > @@ -143,8 +151,8 @@ was not a valid address.
>> >   .TP
>> >   .B ENOMSG
>> >   Empty accesses (i.e.,
>> > -.I attr\->handled_access_fs
>> > -is 0).
>> > +.I attr
>> > +did not specify any access rights to restrict).
>> >   .SH STANDARDS
>> >   Linux.
>> >   .SH HISTORY
>> > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
>> > index 652054f15..52876a3de 100644
>> > --- a/man/man7/landlock.7
>> > +++ b/man/man7/landlock.7
>> > @@ -189,6 +189,19 @@ If multiple requirements are not met, the
>> >   error code takes precedence over
>> >   .BR EXDEV .
>> >   .\"
>> > +.SS Network flags
>> > +These flags enable to restrict a sandboxed process
>> > +to a set of network actions.
>> > +This is supported since the Landlock ABI version 4.
>> > +.P
>> > +The following access rights apply to TCP port numbers:
>> > +.TP
>> > +.B LANDLOCK_ACCESS_NET_BIND_TCP
>> > +Bind a TCP socket to a local port.
>> > +.TP
>> > +.B LANDLOCK_ACCESS_NET_CONNECT_TCP
>> > +Connect an active TCP socket to a remote port.
>> > +.\"
>> >   .SS Layers of file path access rights
>> >   Each time a thread enforces a ruleset on itself,
>> >   it updates its Landlock domain with a new layer of policy.
>> > @@ -339,6 +352,9 @@ _	_	_
>> >   2	5.19	LANDLOCK_ACCESS_FS_REFER
>> >   _	_	_
>> >   3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
>> > +_	_	_
>> > +4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
>> > +\^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
>> >   .TE
>> >   .P
>> >   Users should use the Landlock ABI version rather than the kernel version
>> > @@ -439,9 +455,10 @@ and only use the available subset of access rights:
>> >    * numbers hardcoded to keep the example short.
>> >    */
>> >   __u64 landlock_fs_access_rights[] = {
>> > -    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) \- 1,  /* v1                 */
>> > -    (LANDLOCK_ACCESS_FS_REFER    << 1) \- 1,  /* v2: add "refer"    */
>> > -    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) \- 1,  /* v3: add "truncate" */
>> > +    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  */
>> > +    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
>> > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
>> > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */   Double "LANDLOCK_ACCESS_FS_TRUNCATE  << 1", I think its a mistype here.
	Double "LANDLOCK_ACCESS_FS_TRUNCATE  << 1", I think its a mistype here 
or its ok??
	
>> >   };
>> >   \&
>> >   int abi = landlock_create_ruleset(NULL, 0,
> 

