Return-Path: <linux-man+bounces-1479-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B426932980
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 16:45:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05ECD1F23559
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 14:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586E219E7D0;
	Tue, 16 Jul 2024 14:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="x2bN0OIU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-8fa9.mail.infomaniak.ch (smtp-8fa9.mail.infomaniak.ch [83.166.143.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFED319D897
	for <linux-man@vger.kernel.org>; Tue, 16 Jul 2024 14:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.166.143.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721140720; cv=none; b=l5vrasXgAD6wS0vdRTpBveHRzvLfWQnnq7e6npKV+N8y3miJj2iGmcvv9En46DN+Kuu9d5spKDLzHN9HufLDQn9A/1DmWlVEyWwiqPZcV870B77fC1zPLVlgVNcOOXREQyQAxpReU/8VMkUJ6NsdVXnA0ZrdlMX/0XxwYqBSJ8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721140720; c=relaxed/simple;
	bh=hHOgsfgQ518Ml2WpaG1xKH2ucLI7DXalXZRiYsk7gZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P6o+KRVwGvhN8mq3xgPIUY2FLc1DjE5tFL6YS397o/EKrTSXMBtwfdaHxI8Xf+fxYQq6qzy9aspnPIwg7jaGYQ7LqZD2aQlmZYYCxBZ/fGhCUMO1c+CGId/EoJakJ9Zg8P7gjNATII/5rv3P89SV6hCJc0c4M0aKs14C0rKHmE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=x2bN0OIU; arc=none smtp.client-ip=83.166.143.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WNhWt6rZ3zkhy;
	Tue, 16 Jul 2024 16:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1721140714;
	bh=+FHq8Yhoypb9amL4jiDstePpK8oZpJRUdaF5igam1ig=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=x2bN0OIUmL+5DjKn3tXBSTulF+k7yYmXOp9fDMLhSzAmKmg1DsecJUpplOviIu0l1
	 Y1xNuI1Z5U5vbFoRCojc5Hc5SkSpBnSSYvlY9tuWHm4a+oKWBtqxs6/V3HKRuBfrIL
	 69Rrszn74IwHb3zL8V/TEnOy1UmTwzDgE/aylNZs=
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4WNhWt30p2zB68;
	Tue, 16 Jul 2024 16:38:34 +0200 (CEST)
Date: Tue, 16 Jul 2024 16:38:33 +0200
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
Message-ID: <20240716.jeis8Aetohth@digikod.net>
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-5-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240715155554.2791018-5-gnoack@google.com>
X-Infomaniak-Routing: alpha

On Mon, Jul 15, 2024 at 03:55:53PM +0000, Günther Noack wrote:
> Landlock ABI 4 restricts bind(2) and connect(2) on TCP port numbers.
> 
> The intent is to bring the man pages mostly in line with the kernel
> documentation again.  I intentionally did not add networking support to the
> usage example in landlock.7 - I feel that in the long run, we would be better
> advised to maintain longer example code in the kernel samples.
> 
> Link: https://github.com/landlock-lsm/linux/issues/32

In this case, we should use "Closes" instead of "Link".

Closes: https://github.com/landlock-lsm/linux/issues/32

> Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
> Signed-off-by: Günther Noack <gnoack@google.com>

Reviewed-by: Mickaël Salaün <mic@digikod.net>

Thanks!

> ---
>  man/man2/landlock_add_rule.2       | 74 ++++++++++++++++++++++++++----
>  man/man2/landlock_create_ruleset.2 | 12 ++++-
>  man/man7/landlock.7                | 23 ++++++++--
>  3 files changed, 94 insertions(+), 15 deletions(-)
> 
> diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> index 530b45947..a0ab13419 100644
> --- a/man/man2/landlock_add_rule.2
> +++ b/man/man2/landlock_add_rule.2
> @@ -20,15 +20,14 @@ Standard C library
>  .BI "            const void *" rule_attr ", uint32_t " flags );
>  .fi
>  .SH DESCRIPTION
> -A Landlock rule describes an action on an object.
> -An object is currently a file hierarchy,
> -and the related filesystem actions
> -are defined with a set of access rights.
> -This
> +A Landlock rule describes an action on an object
> +which the process intends to perform.
> +A set of rules is aggregated in a ruleset,
> +which can then restrict the thread enforcing it, and its future children.
> +.P
> +The
>  .BR landlock_add_rule ()
> -system call enables adding a new Landlock rule to an existing ruleset
> -created with
> -.BR landlock_create_ruleset (2).
> +system call adds a new Landlock rule to an existing ruleset.
>  See
>  .BR landlock (7)
>  for a global overview.
> @@ -42,10 +41,15 @@ identifies the structure type pointed to by
>  .IR rule_attr .
>  Currently, Linux supports the following
>  .I rule_type
> -value:
> +values:
>  .TP
>  .B LANDLOCK_RULE_PATH_BENEATH
> -This defines the object type as a file hierarchy.
> +For these rules,
> +the object is a file hierarchy,
> +and the related filesystem actions
> +are defined with
> +.IR "filesystem access rights" .
> +.IP
>  In this case,
>  .I rule_attr
>  points to the following structure:
> @@ -74,6 +78,45 @@ is an opened file descriptor, preferably with the
>  flag,
>  which identifies the parent directory of the file hierarchy or
>  just a file.
> +.TP
> +.B LANDLOCK_RULE_NET_PORT
> +For these rules,
> +the object is a TCP port,
> +and the related actions are defined with
> +.IR "network access rights" .
> +.IP
> +In this case,
> +.I rule_attr
> +points to the following structure:
> +.IP
> +.in +4n
> +.EX
> +struct landlock_net_port_attr {
> +    __u64 allowed_access;
> +    __u64 port;
> +};
> +.EE
> +.in
> +.IP
> +.i allowed_access
> +contains a bitmask of allowed network actions,
> +which can be applied on the given port.
> +.IP
> +.i port
> +is the network port in host endianness.
> +.IP
> +It should be noted that port 0 passed to
> +.BR bind (2)
> +will bind to an available port from the ephemeral port range.
> +This can be configured in the
> +.I /proc/sys/net/ipv4/ip_local_port_range
> +sysctl (also used for IPv6).
> +.IP
> +A Landlock rule with port 0
> +and the
> +.B LANDLOCK_ACCESS_NET_BIND_TCP
> +right means that requesting to bind on port 0 is allowed
> +and it will automatically translate to binding on the related port range.
>  .P
>  .I flags
>  must be 0.
> @@ -89,6 +132,12 @@ is set to indicate the error.
>  .BR landlock_add_rule ()
>  can fail for the following reasons:
>  .TP
> +.B EAFNOSUPPORT
> +.I rule_type
> +is
> +.BR LANDLOCK_RULE_NET_PORT ,
> +but TCP is not supported by the running kernel.
> +.TP
>  .B EOPNOTSUPP
>  Landlock is supported by the kernel but disabled at boot time.
>  .TP
> @@ -111,6 +160,11 @@ are only applicable to directories, but
>  .I rule_attr\->parent_fd
>  does not refer to a directory).
>  .TP
> +.B EINVAL
> +In
> +.IR "struct landlock_net_port_attr" ,
> +the port number is greater than 65535.
> +.TP
>  .B ENOMSG
>  Empty accesses (i.e.,
>  .I rule_attr\->allowed_access
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
> index 105e9b062..ca635ddbc 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -41,6 +41,7 @@ It points to the following structure:
>  .EX
>  struct landlock_ruleset_attr {
>      __u64 handled_access_fs;
> +    __u64 handled_access_net;
>  };
>  .EE
>  .in
> @@ -52,6 +53,13 @@ is a bitmask of handled filesystem actions
>  in
>  .BR landlock (7)).
>  .IP
> +.I handled_access_net
> +is a bitmask of handled network actions
> +(see
> +.B Network actions
> +in
> +.BR landlock (7)).
> +.IP
>  This structure defines a set of
>  .IR "handled access rights" ,
>  a set of actions on different object types,
> @@ -143,8 +151,8 @@ was not a valid address.
>  .TP
>  .B ENOMSG
>  Empty accesses (i.e.,
> -.I attr\->handled_access_fs
> -is 0).
> +.I attr
> +did not specify any access rights to restrict).
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index f7bb37cba..d452b93b2 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -189,6 +189,19 @@ If multiple requirements are not met, the
>  error code takes precedence over
>  .BR EXDEV .
>  .\"
> +.SS Network flags
> +These flags enable to restrict a sandboxed process
> +to a set of network actions.
> +This is supported since the Landlock ABI version 4.
> +.P
> +The following access rights apply to TCP port numbers:
> +.TP
> +.B LANDLOCK_ACCESS_NET_BIND_TCP
> +Bind a TCP socket to a local port.
> +.TP
> +.B LANDLOCK_ACCESS_NET_CONNECT_TCP
> +Connect an active TCP socket to a remote port.
> +.\"
>  .SS Layers of file path access rights
>  Each time a thread enforces a ruleset on itself,
>  it updates its Landlock domain with a new layer of policy.
> @@ -339,6 +352,9 @@ _	_	_
>  2	5.19	LANDLOCK_ACCESS_FS_REFER
>  _	_	_
>  3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
> +_	_	_
> +4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
> +\^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
>  .TE
>  .P
>  Users should use the Landlock ABI version rather than the kernel version
> @@ -439,9 +455,10 @@ and only use the available subset of access rights:
>   * numbers hardcoded to keep the example short.
>   */
>  __u64 landlock_fs_access_rights[] = {
> -    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) \- 1,  /* v1                 */
> -    (LANDLOCK_ACCESS_FS_REFER    << 1) \- 1,  /* v2: add "refer"    */
> -    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) \- 1,  /* v3: add "truncate" */
> +    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  */
> +    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
> +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
> +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
>  };
>  \&
>  int abi = landlock_create_ruleset(NULL, 0,
> -- 
> 2.45.2.993.g49e7a77208-goog
> 

