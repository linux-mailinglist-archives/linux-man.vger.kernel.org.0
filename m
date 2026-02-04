Return-Path: <linux-man+bounces-5026-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJXWDn2MgmnXWAMAu9opvQ
	(envelope-from <linux-man+bounces-5026-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 04 Feb 2026 01:02:05 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1193DFE18
	for <lists+linux-man@lfdr.de>; Wed, 04 Feb 2026 01:02:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B470430BF469
	for <lists+linux-man@lfdr.de>; Wed,  4 Feb 2026 00:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6879475;
	Wed,  4 Feb 2026 00:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IvqmcMXC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dl1-f67.google.com (mail-dl1-f67.google.com [74.125.82.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E234410E3
	for <linux-man@vger.kernel.org>; Wed,  4 Feb 2026 00:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770163316; cv=none; b=lgZOsyQPMeMO9Gvg+sx5obIZXnccdkEzaf7Rm9KWObWp5OYhnpTDXHTY3oDjQGgHlC/LSsrh6Avxp4QeUrLPRrcP6mzqn4qX+lvaeL9nJu+OAAhxx5cfk7t9Xdj1jhP1SQ3uo3BMGiv3bULHRiUgKkW7UBQtYUa22y5DBEGOxz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770163316; c=relaxed/simple;
	bh=1dDjzFNT7EsxZbp01rxXfctc5Ei3zA50m/Ig3CQJ1iU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Nh3iLnVtORW4j+bIIEB5j7o9K+JcUe4v29W+mMXHZE0yAjaJ30LOrRIgSP+v7oWziN6BAN6MmsAdQywigYpbxly+ZtKmOs4l8bCNMGR475xz5gc/1iAs3CSF1JQr/RlECUX+7e19PT4rG6SgRaTwB1trQcxwTVf/uTrOp0Ac8r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IvqmcMXC; arc=none smtp.client-ip=74.125.82.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f67.google.com with SMTP id a92af1059eb24-124566b6693so4894943c88.0
        for <linux-man@vger.kernel.org>; Tue, 03 Feb 2026 16:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770163314; x=1770768114; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lZN+RUhGXOP8esHjgobyh83hDRnPTvMpLmaVmO4E1Bo=;
        b=IvqmcMXCCStlB+dz58bADR1ZYxDhe5qjRaP1xIF2oNpcslRtftDYTO8LvSrVmB6tJR
         GPBtpkReQx98kSM7xfzNHbVFwinGXjTWEuSHnPL7g4d+9tCU+JGY47GXE9sD0web3kSs
         A98v3HHzSDeRFJnh2ivTpN/Kp66A0jbOy8HG85/Qdw39lx7JZRCtXslU5TIg7RQ7uFJp
         30/YKCQsVGa2ftyvkg6obKwn+tGMJHSK0jWrTyCeFjg00HU3E558hpo/R2cP+SRdKdGH
         dfPip6x0/81kx5C+V1E9kiy1K1mIVxQkqcrDhI2WTDlaaDTE4LbsaIyRskxVssDoH40w
         GaFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770163314; x=1770768114;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lZN+RUhGXOP8esHjgobyh83hDRnPTvMpLmaVmO4E1Bo=;
        b=Vj8FqPxRpguwHUNrrdJsgVnHz3ZXG3qLzSAnT/gmzRKJE697pWU/J30lOv4HPsyc8r
         vHwnHG9BRj+5hK0D3epTUMYGOISN0U+9RfhY1NXoxWYmAkYXOpZAsVLCgxEvp7Qjzm7f
         IBDbfQKXe8O65Dkbzqc+YdSQmMBRYDqDkg3x8ED4uLpt6SXzVRmtzfjLtrbBPpLP1R01
         ZTd6Kxjnkg7EM14EAB1JZ3S0TftP3FTv2arXespdIQ3Ad4cU6i2HA+9h1EYteCCc9iBs
         dVIs+nF6l1mW9tQSkZOMEELeQPm0jRO1kQYVI4guIdnArNj+FXR3yYJR4xYEKaI8KAR/
         KzKQ==
X-Gm-Message-State: AOJu0YyhYsN9fnPWkakIPlBFo50oMMlvYdj6WBXzMTXi09U4uQ/DelkK
	KQc3AT+B3k8rd7u/LsXfCeoKgdAlbW4yLGQNmiE/8wtooTZYArzumJO9
X-Gm-Gg: AZuq6aIec5TXhW9iyFhiIzl+ibnbcmqQtp7nXfFe1qzIt4jXVC0Qq2ytW0Eu73SywyW
	6bH63CCB4smNoOrieug+bBYtpHNMa/84NTQgnfqbhSOoVoTTQjX35w6RVWigIPCNh03TTW2owxp
	u5bEC0pz9EplgC+wOjIhLd1/Y7xJf9sQaY7vM3AfOW56SflGiI3mRSkfHNxSNyojpVPHWeMTog9
	02fe4zai/DkRBodOVlBJpdS4gEUFN7rEJLONjmaJEPly/FCDDkIINCBm1ftvWYpOM1rQT6ZFI1O
	L1QtPToyyTBR6v2BcsOnAJAbzOutshksaLUEy25qAO8gh39BlT5artvESl462ztBPLnge3Xa+fv
	L+Fofgd4w9AL3gDrq/JZdaWb/5xJvUMvk2e98R71a6hG43aiJj8u1pjA/VNRV6DqomUd3
X-Received: by 2002:a05:7022:418f:b0:123:31dc:e8b5 with SMTP id a92af1059eb24-126f470cbaemr634904c88.0.1770163313983;
        Tue, 03 Feb 2026 16:01:53 -0800 (PST)
Received: from fedora ([2601:646:8081:3770::996e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f5030e22sm742032c88.10.2026.02.03.16.01.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 16:01:53 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,  linux-kernel@vger.kernel.org,  Alyssa Ross
 <hi@alyssa.is>,  Greg KH <greg@kroah.com>
Subject: Re: [PATCH] CONTRIBUTING.d/: Document format of 'Fixes:' trailer
 fields
In-Reply-To: <3a656e90329f26d743d0904f56ae847951c852c7.1770150003.git.alx@kernel.org>
References: <3a656e90329f26d743d0904f56ae847951c852c7.1770150003.git.alx@kernel.org>
Date: Tue, 03 Feb 2026 16:01:52 -0800
Message-ID: <87zf5p8jgv.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5026-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[collinfunk1@gmail.com,linux-man@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F1193DFE18
X-Rspamd-Action: no action

Alejandro Colomar <alx@kernel.org> writes:

> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>
> Hi!
>
> I hadn't yet documented how to produce the Fixes: trailer fields in the
> Linux man-pages project.  We require the commit-date to disambiguate
> possible hash (and subject) collisions.  This documents how to produce
> them easily.
>
> I hope this will be useful to other projects.  I've been using this
> format for some time, and it has some nice properties: it shows at first
> glance the date of a commit (which itself gives an idea of how many
> stable versions would need to be fixed).  It can also be parsed by a
> machine, by having a consistent and simple (unambiguous) format.
>
>
> Have a lovely night!
> Alex
>
>  CONTRIBUTING.d/git                 | 16 ++++++++++++++++
>  CONTRIBUTING.d/patches/description | 11 +++++++++++
>  2 files changed, 27 insertions(+)
>
> diff --git a/CONTRIBUTING.d/git b/CONTRIBUTING.d/git
> index 4b7a95472..3f944a23c 100644
> --- a/CONTRIBUTING.d/git
> +++ b/CONTRIBUTING.d/git
> @@ -43,6 +43,22 @@ Description
>  		$ git config --global \
>  			sendemail.sendmailcmd 'mutt -H - && true';
>  
> +    Commit references
> +	'Fixes:' trailer fields should have the following format.
> +
> +		Fixes: 12-char-hash ([author-date,] commit-date; "subject")
> +
> +	where the author date is optional, and only included if it's
> +	somehow important.  The commit date is often more important, as
> +	it's sorted, and thus can be used to find (with a binary search)
> +	a commit whose hash and subject may have collisions.  To produce
> +	such fields, the following git aliases are useful.
> +
> +		$ git config --global alias.ref \
> +			"show --no-patch --abbrev=12 --date=short --format=tformat:'%C(auto)%h%C(reset) %C(dim white)(%cd%x3B \"%C(reset)%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'"
> +		$ git config --global alias.ref2 \
> +			"show --no-patch --abbrev=12 --date=short --format=tformat:'%C(auto)%h%C(reset) %C(dim white)(%ad, %cd%x3B \"%C(reset)%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'"
> +

I would recommend taking a look at the one mentioned in git's
SubmittingPatches. It looks fairly similar to yours:

    $ git ref HEAD
    d9fb823121b1 (2026-02-02; "maintainer-makefile: propagate MAKEINFO to gendocs")
    $ git show -s --pretty=reference HEAD
    d9fb82312 (maintainer-makefile: propagate MAKEINFO to gendocs, 2026-02-02)

Collin

