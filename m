Return-Path: <linux-man+bounces-1476-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA9393297D
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 16:45:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA3A5286612
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 14:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B48D19DFA7;
	Tue, 16 Jul 2024 14:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="bgJabpXj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-8faf.mail.infomaniak.ch (smtp-8faf.mail.infomaniak.ch [83.166.143.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DBC19D06A
	for <linux-man@vger.kernel.org>; Tue, 16 Jul 2024 14:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.166.143.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721140694; cv=none; b=KHCFgzrw2YBlRJBktpiMGkWdXczJObfuM9CTSMxIET4c/IkDPw68855+ASJffq+P8/MjRK9uDadtN4ExTY/SE+j3nu9d1imCnMsNdmLsrxL93eTqyOyUoRmN5kizPvsuFWjTevHABrFhFCouR0W9++zu8igMoTV+yqFdhtq+TIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721140694; c=relaxed/simple;
	bh=rqw2H6654+EkbFVahq1XySL0qNd/7uRhua0l1R2+4fI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pm6X3bAnQcF/6MWELrH6X7FvRGs56khKx0ob8fcuYAtuz46dkm6gIEVRrgS8TJCIauEJnB9luVHTqFYjIMReELfi9AkEyVlXeM2l4njC2vrxOT73qAndF8BEoZ7HhiGeHutWbdGPK5VLm/Z2EZZWJLF9xmOJPGfK1lgb/ySMcdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=bgJabpXj; arc=none smtp.client-ip=83.166.143.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WNhWN6Yl0znf5;
	Tue, 16 Jul 2024 16:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1721140688;
	bh=WGO6m2oCNO4cZTX0IVQjfVgCm3RzSsNOpPpASLAtA1w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bgJabpXjWSxmHdYIEc63wugj3R08zGfJQI4pGKcDQYY+qJvASFBf89HSVRJ4IzObg
	 0perZqjdsXZn1JJ2/cgoNwMb8lvDCYpPSIDddOiBZmsxFYJr8kd6E5mY5XROXQV+hF
	 CRvl12M186scoOzwszKMY2lQdMoo7hQ9hq6rdH44=
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4WNhWN3Q72z1yk;
	Tue, 16 Jul 2024 16:38:08 +0200 (CEST)
Date: Tue, 16 Jul 2024 16:38:07 +0200
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvements
Message-ID: <20240716.quoo0PheuCoh@digikod.net>
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240715155554.2791018-2-gnoack@google.com>
X-Infomaniak-Routing: alpha

On Mon, Jul 15, 2024 at 03:55:50PM +0000, Günther Noack wrote:
> * Various wording fixes
> * List the same error code multiple times,
>   if it can happen for multiple reasons.
> 
> Cc: Mickaël Salaün <mic@digikod.net>
> Signed-off-by: Günther Noack <gnoack@google.com>

Reviewed-by: Mickaël Salaün <mic@digikod.net>

> ---
>  man/man2/landlock_add_rule.2       |  9 +++++++--
>  man/man2/landlock_create_ruleset.2 |  6 +++---
>  man/man2/landlock_restrict_self.2  | 11 ++++++-----
>  man/man7/landlock.7                |  6 ++++--
>  4 files changed, 20 insertions(+), 12 deletions(-)
> 
> diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> index d4ae8f2f6..fa0b1f109 100644
> --- a/man/man2/landlock_add_rule.2
> +++ b/man/man2/landlock_add_rule.2
> @@ -60,7 +60,9 @@ struct landlock_path_beneath_attr {
>  .in
>  .IP
>  .I allowed_access
> -contains a bitmask of allowed filesystem actions for this file hierarchy
> +contains a bitmask of allowed filesystem actions,
> +which can be applied on the given
> +.I parent_fd
>  (see
>  .B Filesystem actions
>  in
> @@ -92,7 +94,10 @@ Landlock is supported by the kernel but disabled at boot time.
>  .TP
>  .B EINVAL
>  .I flags
> -is not 0, or the rule accesses are inconsistent (i.e.,
> +is not 0.
> +.TP
> +.B EINVAL
> +The rule accesses are inconsistent (i.e.,
>  .I rule_attr\->allowed_access
>  is not a subset of the ruleset handled accesses).
>  .TP
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
> index 618d54f37..871b91dcb 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -23,7 +23,8 @@ Standard C library
>  A Landlock ruleset identifies a set of rules (i.e., actions on objects).
>  This
>  .BR landlock_create_ruleset ()
> -system call enables creating a new file descriptor identifying a ruleset.
> +system call creates a new file descriptor
> +which identifies a ruleset.
>  This file descriptor can then be used by
>  .BR landlock_add_rule (2)
>  and
> @@ -45,8 +46,7 @@ struct landlock_ruleset_attr {
>  .in
>  .IP
>  .I handled_access_fs
> -is a bitmask of actions that is handled by this ruleset and
> -should then be forbidden if no rule explicitly allows them
> +is a bitmask of handled filesystem actions
>  (see
>  .B Filesystem actions
>  in
> diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
> index d4e5e753c..f044c6b31 100644
> --- a/man/man2/landlock_restrict_self.2
> +++ b/man/man2/landlock_restrict_self.2
> @@ -20,7 +20,7 @@ Standard C library
>  .SH DESCRIPTION
>  Once a Landlock ruleset is populated with the desired rules, the
>  .BR landlock_restrict_self ()
> -system call enables enforcing this ruleset on the calling thread.
> +system call enforces this ruleset on the calling thread.
>  See
>  .BR landlock (7)
>  for a global overview.
> @@ -38,10 +38,11 @@ with multiple independent rulesets coming from different sources
>  built-in application policy).
>  However, most applications should only need one call to
>  .BR landlock_restrict_self ()
> -and they should avoid arbitrary numbers of such calls because of the
> -composed rulesets limit.
> -Instead, developers are encouraged to build a tailored ruleset thanks to
> -multiple calls to
> +and they should avoid arbitrary numbers of such calls
> +because of the composed rulesets limit.
> +Instead,
> +developers are encouraged to build a single tailored ruleset
> +with multiple calls to
>  .BR landlock_add_rule (2).
>  .P
>  In order to enforce a ruleset, either the caller must have the
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 4a98f6549..f7bb37cba 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -58,7 +58,7 @@ and
>  .BR landlock_create_ruleset (2)
>  for more context.
>  .P
> -A file can only receive these access rights:
> +The following access rights apply only to files:
>  .TP
>  .B LANDLOCK_ACCESS_FS_EXECUTE
>  Execute a file.
> @@ -87,6 +87,9 @@ or
>  .BR open (2)
>  with
>  .BR O_TRUNC .
> +.IP
> +This access right is available since the third version of the Landlock ABI.
> +.P
>  Whether an opened file can be truncated with
>  .BR ftruncate (2)
>  is determined during
> @@ -97,7 +100,6 @@ using
>  .B LANDLOCK_ACCESS_FS_READ_FILE
>  and
>  .BR LANDLOCK_ACCESS_FS_WRITE_FILE .
> -This access right is available since the third version of the Landlock ABI.
>  .P
>  A directory can receive access rights related to files or directories.
>  The following access right is applied to the directory itself,
> -- 
> 2.45.2.993.g49e7a77208-goog
> 

