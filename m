Return-Path: <linux-man+bounces-2758-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1738AA81BD2
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 06:15:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 204171B885F9
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 04:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA8F33EA;
	Wed,  9 Apr 2025 04:15:04 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.hallyn.com (mail.hallyn.com [178.63.66.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B6E1CF7AF
	for <linux-man@vger.kernel.org>; Wed,  9 Apr 2025 04:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.63.66.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744172104; cv=none; b=IwLvWuDfi7aeumARgrQeqENRVn+4JU8mNwoAUuD2G8vu8h0YxRuMWVDMJSmFx8MNShwVHTysCTWNMVv9U8kCxkfDJbs1pE0PW+YdLEq2/e70SlLxR/c5MYk7lHB0TNmT6Mtxhe9ldt/z6LH7uQUYasnUH7XkfOqOPVoBMCLXO8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744172104; c=relaxed/simple;
	bh=NnjmFB5ZzPHisJIIMDXdj0dc6oo1HJElVCh4zkSYBiA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tw+Y9dcyNGTw9IDbdupumBaLydlMuOaTOULdnaWDqb/vb5myH51uqtdw1GT5gwXClX8t0NlSe6Txw/+E0E0DL299Iw4mtWnJKDg/katPsUzjEdyo+idlmjVPvWzU2ctlX2SM5PwhBXtPrL49xG3Wbj3+lc5rDUOkXqZyt2uPV7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hallyn.com; spf=pass smtp.mailfrom=mail.hallyn.com; arc=none smtp.client-ip=178.63.66.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hallyn.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mail.hallyn.com
Received: by mail.hallyn.com (Postfix, from userid 1001)
	id AA42D31F; Tue,  8 Apr 2025 23:14:52 -0500 (CDT)
Date: Tue, 8 Apr 2025 23:14:52 -0500
From: "Serge E. Hallyn" <serge@hallyn.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>,
	neomutt-devel@neomutt.org, Iker Pedrosa <ipedrosa@redhat.com>,
	Serge Hallyn <serge@hallyn.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	Richard Russon <rich@flatcap.org>,
	Todd Benzies <tbenzies@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>
Subject: Re: spear phishing attack on me
Message-ID: <20250409041452.GA498769@mail.hallyn.com>
References: <kmmxxicgr7mwai6rffhbqtfrs77gcbhdj5qfqmfuu33a6nafgd@xurecmxd3mup>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <kmmxxicgr7mwai6rffhbqtfrs77gcbhdj5qfqmfuu33a6nafgd@xurecmxd3mup>

On Tue, Apr 08, 2025 at 02:31:37PM +0200, Alejandro Colomar wrote:
> Hi everyone,
> 
> I'm writing to the mailing lists of every project in which I have write
> permissions: shadow, linux-man, and neomutt.  I also CCed maintainers,
> LWN, and my contact in the Linux foundation.  In BCC is my contact from
> Google for my sponsorship, which might be of help, and also another
> friend from Google.
> 
> Last week someone reported to me a vulnerability in shadow utils.  It
> was a real vulnerability, although something relatively unimportant
> (needs physical presence of the attacker, or a way to read memory of a
> setuid-root program --which means they probably already own the
> system--).  In fact, we kind of knew its existence already, and I've
> been working on mitigating it, and we've discussed it in the project.
> 
> The report seemed legitimate in the begining, although I was suspicious
> that it was only sent to me (I'm involved in the project, and am the
> main contributor by number of commits, but Serge and Iker are the
> maintainers (I maintain the stable branches only), and the guidelines
> say they should have been CCd), but that's something that could happen,
> so I continued discussing the vulnerability with this person.  In my
> responses, I added to CC the co-maintainers.  When this person replied
> to me, it removed the co-maintainers from CC, which again is suspicious,
> but is something that could happen.
> 
> This person tried me to open a couple of PNG files, supposedly showing
> an exploit for the vulnerability.  Of course I didn't open any of them.
> I replied asking for a text-based alternative, because it would be
> ironic that talking about vulnerabilities I would have to open
> "unnamed.png" and "unnamed-1.png".  The person didn't reply again, which
> to me was the confirmation that it was an attack, and they realized they
> got caught.

(Had asked this previously privately, but this seems worth discussing
publically)  Would be great to analyze the images.

Of course it *is* always possible (unless you've found even more
evidence to the contrary) that the reporter is legit and just...
awkward.  Google does come up with a "security researcher" by that
name.  So I wouldn't go whole-hog on the witch hunt just yet, but
the whole thing definitely is fishy.

> I don't know why exactly they targeted me, but I assume it's because of
> my involvement in one of these projects, so maintainers of these
> projects should be especially careful these days, in case they try
> another vector.
> 
> As for me, if anyone tries to impersonate me, please make sure it's me.
> I almost always sign my email and *always* sign my git commits with my
> PGP key.  If in doubt, please verify it's me.  I have never changed my
> PGP master key, and keep it almost always offline, so that should
> ultimately be the way to know it's me.  The key was certified by Michael
> Kerrisk, and he knows me physically, in case we ever need to verify (say
> if my master key ever is stolen and I need to revoke it).  This attack
> was unsuccessful, but if I'm a target of interest, they might succeed in
> another attack.  Don't trust me too much.
> 
> As for the attacker, I've reported to Google via
> <https://support.google.com/mail/contact/abuse>, although I'm not sure
> if they'll do much.  It would be interesting to learn the IP of the
> owner of the account, and if it used a VPN to connect to gmail, if it
> tried to attack any other people, and any other patterns that might be
> useful to learn who is interested in this attack.  Maybe my contact at
> Google can talk to people within Google to investigate this further.  Or
> maybe some of you know someone at Google that can help investigate this.
> The attacker is "Mahdi Hamedani Nezhad <hamedaninezhadmahdi@gmail.com>".
> I presume this is a false name, trying to impersonate someone; I assume
> noone would try to attack someone else using their real name.  There's a
> real person with that name --or so it seems in LinkedIn--, and is a
> security researcher in Iran.
> 
> 
> Have a lovely day!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>



