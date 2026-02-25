Return-Path: <linux-man+bounces-5226-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCqCC/VKnmnXUQQAu9opvQ
	(envelope-from <linux-man+bounces-5226-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 02:05:57 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FD118E838
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 02:05:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 75B0E307B678
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 01:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9BA208D0;
	Wed, 25 Feb 2026 01:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CpUSg2s8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AEB19E97B
	for <linux-man@vger.kernel.org>; Wed, 25 Feb 2026 01:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771981397; cv=pass; b=KTnA7MK0dtff4FNKepsYi+M9mTXWrph25bfM6O7Y+LGj5P1ZT/JL8/dytZdLDLfRzAS9RBv+6QPppviU64Ofhlf1jpAe7hzzjdnwPmDe6H6amQ5RpuvTVRcxGKzG1VLxwwzkXU5YaSWURcI+tfyQFnKqs0WKGtWGwGRJL/gA9Uw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771981397; c=relaxed/simple;
	bh=vaj45/Ee/ZCJ0o9gJLRhYLwt3l6NHtQktr0ruC55ETE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jYRX3YWcQf0l1+4GyaouPpmBb5YhKlY6WsJNVVWzSP3dXQ+VIoLPVO3xpZDCMvofp33BKPFUDqK/LkNaHvzz1ZPmcJwgHqOguMiQmiHhWeIkyKEqtnh15p1EsVbkmDH0jIdQnkUtkTdhwMb+sEIlbbyYdRf7bST0qVrU7lJYKLc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CpUSg2s8; arc=pass smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-38704f70ea3so54650961fa.2
        for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 17:03:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771981394; cv=none;
        d=google.com; s=arc-20240605;
        b=Dw0pgYhySdoxerWVIb7mlNNMWBfK1sVPyuvRDoTo6J1JXOupEeKW12DUgo9Z7/DDSR
         WIha9bCzX9hz6MjTMwLPTf4GZ+0RqkQd4keA/ky47BhgA2h7SgBm1PfTlabw8RWKpP61
         hSPYKadgsOUuiTfkAzwCrVbIgeVSvppF40+yubI/ziByXlPFkj9YOtAjQlBfS0Di4JYd
         cYkuSDLiG/NPoxrdpiFQyN9K5uAEMbhS5f/ixpuk1WlrxlfUKa6QGvr8RL7T/4jEYmxd
         dDOhiEe/eL6asQDY5RfLvmKSHwyoNW4ZAvxZeh3E7x55n5q7fdVg7JQgtlrGe3pGI4Ut
         FZRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=805L3X0B7NKPWk8WIyLURZcWhVVOcV3Rx5cH4HiuDgo=;
        fh=FLuelKr5RPWf1w1Bl9ZEmB8bzXnTAHmvLMA+JOyFiUU=;
        b=jDSoYpBGuWkiWYmaYeSmC9ASPcXOUv47j/gwmvh5Uf78/UClVsD/SNg6ig70ZltbB8
         iPw3t0Tr0wmi5smxdKDYFbvKzwZmHv3eSTL5YYdUQDU8NR1DW1W7zjI6/ERBP+HyPUfv
         1OYV5RXb15kxs47fZJf2zhqY2WnX55XB5QJ7+tm75DQrRhU2eKG7PeBGQla5qjUUhsXA
         ca4zphmViMTbbT4a3MO1oFCkPBUOoZWHqvYf4qc+u7xNbQ+KuWFT2i3eB8Yv2G6mobqg
         h6pgcgHYAwGaHk02k8VMcKNdiHxGshmiv5UGKlFr0QmeLzDxmgIzA4BtUrNu4PptpiHE
         8SlQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771981394; x=1772586194; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=805L3X0B7NKPWk8WIyLURZcWhVVOcV3Rx5cH4HiuDgo=;
        b=CpUSg2s8GSDmrlerZIyfMXynQwCK0hJYm+IJij/MMdDp7QccvD+7Q6h0vMvn7qLEtV
         kqcScyNcVy0joVKFCkbNIoHMq2Ef8ljwAG5R8O7zDpnfxsiN7DrnovGZEzI05Bu2LXa4
         5T9UfIRxsB7Hjb188MkPVMZnVx8WHMH9sgnRz4skTp0d5+Kdif2Y+ez956n2pp6hPPCr
         aVBq7a94s53Wwg4LkYQ3Zf3SrBYpoAc+pohpq6LACL1lK72gQv87smuLg3hvHsZJ1+6c
         aY92gal80TWZdZMwvDkPfIKyrMiD1jGQWYQW9+LSaqTu2qaNngx5tHqpMsXVbVR5w1Gq
         988Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771981394; x=1772586194;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=805L3X0B7NKPWk8WIyLURZcWhVVOcV3Rx5cH4HiuDgo=;
        b=O/e8ASMRhys64KjgQM1skmj6obI6PLgMFocjRNrOcuLy+7o8mNJBUs9089VLPc82Yb
         YiG+90z7StsE5yEzkMUj5NAoGqM4p2Pbc+pH/JMKbwAsB2hFxtTJSyYqmvmbAMR4hhpH
         WY3Sr7asvDO+SCdtMj4S0Tud57R3bS5UwgF9z2oGf1xnVLe5iGJm3tCvhuhSxUFykMoQ
         E/w8OjyC8WhoX2EXw2b3VIkVnzM2rr4YQeUt9N3yy6Wcme5BOPLTQccAF5ljqXMdAenL
         juNGl79japoD0cg4sUANQkERxL6C4zaRohAXpfXsvpUosdEtqTCXyZ94uIfJ2RCVn7nF
         hhcA==
X-Forwarded-Encrypted: i=1; AJvYcCUkp5gdOTZUZVCHrtRaklNg6lesRGONyhfTUusIPJrq61J5i7L9QxGx5eNS+L0h4kdf8MaYvVfwD8g=@vger.kernel.org
X-Gm-Message-State: AOJu0YzYJgIpcVZGECptA9XagDVma78x1Wjw2H0cBj9PX7tosAdN86pw
	tpiVY1Mf/NXcCMlK/p5moajuofk+1AA3bRu/0Tc6odutbAyBHa4ajtv1Xx/4+OTpOqzagwDrndv
	jVVkYPy9VhJwNmESXRchbCIqfd96Fpxw=
X-Gm-Gg: ATEYQzxyk0LdpgwiMOEza/w4lEgX72cU8NsWEofWtIvuKBgjGjuMAdpQAT4Zsnhrh3B
	bsJID4Gcm3HqA/wJRgj9Fqu/EMOmNZG5xes0wc/rJgWyxqBRBIE2KuS4qFPburdDxhayXCboPfP
	rIxfn9QyLcWx15MFVoRutvARM2Kj3v17PxZecVvAeXpiQ17FSn6XJIPG8c1Fl8L2s9yDCw2y9DA
	c4Xuuv6E49QBXy6DWCxVGQXVuInP4v/0tlCY4+UKICRT3o5S1ZPYxeFeWyFhkD7XB/SMJMOt8IO
	lq8E43gCk5xT002DE4HZ2TOGNbqw5Z+mb4NIVQ==
X-Received: by 2002:a2e:be2b:0:b0:387:360:758b with SMTP id
 38308e7fff4ca-389a5bbcff4mr44245311fa.25.1771981393866; Tue, 24 Feb 2026
 17:03:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <aZ2xBQcy7mMEXW_b@devuan> <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
 <aZ4YhDCzMOnokXH9@devuan> <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>
 <aZ4uoYdrTOidHhmh@devuan> <ba68e79b-c86c-4cd1-b826-fd67f0cd0878@cs.ucla.edu> <aZ40B_03Qigx680z@devuan>
In-Reply-To: <aZ40B_03Qigx680z@devuan>
From: Mark Harris <mark.hsj@gmail.com>
Date: Tue, 24 Feb 2026 17:03:02 -0800
X-Gm-Features: AaiRm53QnwRLjIt0ECUTh9VTtVc_fXsGwhsRr86xnuupyvGOuhfAnPqylW_aZfs
Message-ID: <CAMdZqKF8wO5Kq8ac4t7r9_8GkYSe=XN70SAa5e699zkSncMcqQ@mail.gmail.com>
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
To: Alejandro Colomar <alx@kernel.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5226-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 95FD118E838
X-Rspamd-Action: no action

Alejandro Colomar wrote:
>
> Hi Paul,
>
> On 2026-02-24T15:19:14-0800, Paul Eggert wrote:
> > On 2026-02-24 15:05, Alejandro Colomar wrote:
> > > > > How would you document strchr(3)?
> > > > I'd do what the standard does rather than reinvent this particular wheel.
> > > So, you'd use QChar?
> >
> > Yes. As confusing as QChar/QVoid is, it'd likely be more confusing overall
> > for us to invent our own notation.
>
> Hmmmm, okay.  I see conflicting opinions (others prefer C++-like
> overload notation).  I think I prefer QChar/QVoid, but am not convinced
> of which to use.
>
> Whichever we use, we need to distinguish cases like strnul(3) from cases
> like strchr(3).  I think I'd do it like this:
>
>         strchr(3)
>         SYNOPSIS
>                 #include <string.h>
>
>                 QChar *strchr(QChar *s, int c);
>
>                 #undef strchr
>                 char *strchr(const char *s, int c);

I don't see how anyone would understand what this is trying to convey,
unless they were already familiar with the C23 changes to strchr.  The
#undef in the middle makes it worse, because it appears to be going
out of its way to describe the function using strict C syntax, even to
the point of sacrificing normal synopsis conventions and clarity.
However QChar is not a C type or macro, so by making it appear that
the synopsis is supposed to be interpreted strictly as C code it just
ends up making it more confusing.  The C23 style only works if you can
put QChar in italics, as in C23, or some other style that clearly
distinguishes it from a type name or C code.  If you don't like the
two-line synopsis it would be better to just leave the synopsis as it
was, and add a sentence to the description that in C23 a
const-qualified argument propagates the const qualification to the
result type.

 - Mark

>
> The above documents that you can #undef the macro, which provides the
> function with the different prototype.  And then strnul(3) would only
> have the QChar prototype, as there's no function.
>
>         strnul(3)
>         SYNOPSIS
>                 #include <string.h>
>
>                 QChar *strnul(QChar *s);
>
> What do you think?
>
> > Whichever notation we use, we need to
> > explain the business with void * arguments anyway.
>
> Hmmm, yeah, this and other corner cases lead me to think QChar/QVoid
> would be better.  It would allow me to write a manual page describing
> those.  And I expect people will eventually get used to that syntax;
> it's a matter of time.
>
>
> Have a lovely night!
> Alex
>
> --
> <https://www.alejandro-colomar.es>

