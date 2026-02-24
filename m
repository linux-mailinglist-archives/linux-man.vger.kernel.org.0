Return-Path: <linux-man+bounces-5216-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCnyLZzYnWk0SQQAu9opvQ
	(envelope-from <linux-man+bounces-5216-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 17:58:04 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3620018A2E1
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 17:58:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6E70B307DC6F
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 16:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA873A9014;
	Tue, 24 Feb 2026 16:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hEHKLr2Y"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC923A8FF6
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 16:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771952232; cv=pass; b=KVVLTWB1SwNk6Uk417JceDfQIftoAtn3v8J6gpLwiUnOrKefVMYSKfBiJpJErZES9XwO2xGOZurvoSIqIkw+NZukRjK4Z7UVvR/lkNbP3HntZmznwz0YyONpD1hyJmwfas9i2ABrfEogtPaXmpx6BxBwP5xlfVjEE3TGnpGLXeI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771952232; c=relaxed/simple;
	bh=th9os7amu32mkvUMSGJ2iVgyh1EHiILfnSjoakkYc00=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sduQ34WqgbMNZ7k0RW2wjTV5C63cMHCcjTsLJ0rBzrJZIAFWKRdICmoqdQQhmP/6FQFINa2XO8sScfPmdScxxEaZ+exZJSSfQN9+DpChimoM01u4d72+wtEbFYM59d9T8ddi1luXjQ82t/ZwY3jlrgw4IBzWihGbRdoRWWDY5ss=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hEHKLr2Y; arc=pass smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-38710d7d8baso46498101fa.2
        for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 08:57:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771952229; cv=none;
        d=google.com; s=arc-20240605;
        b=bCkqmIAiKsGsXEdDPaxP4lA5GUN9UtxpMRrv+XFdQCZ++qStLyxubh3HiBPVRg7tyl
         9j4xAAwCmKdY9flncxI/fh8koo9qvjJRZFgcNIL+W79yChwvMwKPCAw9uTJF8QSy+V2i
         eQpCYw/w8luDJlkCsa17hmRsPU5uwtDqp/DTER9yl0tQpjZs3BmxwB4IGb84Xhd4+LdR
         i+BQxl5mJ3rckwzQ4WhKW7K9AW/7T15zncjoB2sRxxfLWLUyLKGwVoYH9GMT5fj/tCLO
         zzQnTpoANKvNYKxRiem5DyK3t/0QNWRgY1B+zUokm76Qd7atP/419ZhGaCRN1bPXsGhC
         OwAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kUmzxQ6EnBz7ChFksCMqGYnPIYohz+HODC/0HVODhys=;
        fh=kTbk4pccRQ7ywKItoF6eFeVMUIye+84NI5zbIP4rQ9Q=;
        b=Z0fhSgHpysdlzjEKhNwZ7P//v9Akswqfa5Y15ouUiPM5lEKs42ktcaIBlK2hDEMrc/
         XEKSjynR+QCZhgp4N4rdTrMV6m/GHrJEntXTUUiguHoolDXdDwznhk+0ORYJI1A86H9n
         bdYbfGHSxpIBld8+dM7i+G74axQh2NPb8QRg2xm7uoNR7UrS+X1LFsL+hh+3tuXF7Icy
         xrWxGc3gJwP672jvhTCuHFxfxZeDvpbXfqhYruKLIp2jOTbdmq0fOvxDG1MZezL6jrth
         s3FLPdom8Jta6kCWPhZymB9NXMoWMLeRFr94GKowqRRWka6EnYI+LXkYzXKxvqD/hKle
         odSA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771952229; x=1772557029; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kUmzxQ6EnBz7ChFksCMqGYnPIYohz+HODC/0HVODhys=;
        b=hEHKLr2Y8s9kLHVBWWi8Qowio9gUoYhz/1mpi/DRDnOaacxnbXC19b7eajiopsJh7p
         Q2WToR2JZJNBCQpXqKy8w2Ib8d2W+5VcpreBnTEmn0s/Pno7jCQZRgyefh32EhnWs/iN
         FAbjewQ7FYmPCroFsKzE8CY1YjoxyuCV5q7oFj4yS2eMZuvJvhwInQNctime2LtOPksr
         Xu1L8JZHIfd1SrGwpoAwKLR9/JQZ0ikttLYIL02zbdQCn/npAlGdU2HKgEcZkNFDn8uf
         7rkUd8PAO6ApDFkbY5GWGfmY+t+3vuTgiHg2qP5TujnesCC0MZIirqkXtHUXO/UhigWW
         lZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771952229; x=1772557029;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kUmzxQ6EnBz7ChFksCMqGYnPIYohz+HODC/0HVODhys=;
        b=OPfjStI3+MRRUVuM6r2yUUvyCtoEwlt5Rio+0a7FtOrZQgTjf5hfMWjZW/7igcBxuy
         q1qukQF6W9rgqNJ7xg6OXjNakFdUp0V2dlRySxzNbS6DZyEmlptpjwV4k0I9A1g8oLTS
         oCGJknlA2G+/FpBOaZFAHvTxWanwWLvp1h3bFIVtDYacojgu9P2Pv/mWd24HmEBvoVMo
         cqiu4chNgXwlSyPlqAi1Rccdyx0maO7o0HMH+P7VqujVzpDSxxNUEB9ONPC+yLMlKIRj
         Nck/Ij9P+QxsOAsHo8IoRsxTO1XqOT5WUMZVtibU7R2p6JqBp438AeYmHRsywlEhQx/8
         qxQQ==
X-Gm-Message-State: AOJu0YyNzTUGvou6I2iiQ1E8UMckSFryfLw/U65thM34yfwl+ezj/br9
	IWhyCW6ZK/lULDvLfkYOopyvIBBKly9p5M0cwKRVlgciq3gQ3k/V3dBp0w15KIa+H8FHQ3cXflp
	I1FSGiM4Lh7PR9lLMWCQwfkgvinkPMjY=
X-Gm-Gg: ATEYQzzlNL3hNTcjcHlwbvQUGRCftgEVrhw3XOvIIFENx6opIZVASczLYzkF7R/eSdM
	MCwebHNSqqNxEQBxqi+CJG8w0ZeAruTZdjSo1ZmfE+1wfDKcYMki0zk4e3uB1HOGWLvTNplEOW+
	1aELxvvSGVkETW7jLMxe70oRzfEh1sMBRGDXDLKcZoOXRZEMWReWx026onzotkZYDOWjYvQ58Mf
	boupIRdb+Od/TJILTUA7RPpSqxEuKoZuu2wbaIqs7jWnFinww++j6VhZ7IuIDhzqQKHf8NDkqFi
	vzVKuwdXFPsUXYQc7X1/OPkWPpXLFXHl93gkQA==
X-Received: by 2002:a2e:a543:0:b0:385:f3df:c378 with SMTP id
 38308e7fff4ca-389a5e86565mr40365861fa.29.1771952227840; Tue, 24 Feb 2026
 08:57:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <aZ2xBQcy7mMEXW_b@devuan>
In-Reply-To: <aZ2xBQcy7mMEXW_b@devuan>
From: Mark Harris <mark.hsj@gmail.com>
Date: Tue, 24 Feb 2026 08:56:56 -0800
X-Gm-Features: AaiRm50mMRLsnKqZl4v1m0_eiXzIW2UqbnnesMVbIHT1b-v9bgWAC1y-Dw5zdG8
Message-ID: <CAMdZqKEoK-NwrDRFOJuS8wZVfdiRZr2GuK+f68fxRbk7XbRKQg@mail.gmail.com>
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5216-lists,linux-man=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,openwall.com:url,open-std.org:url]
X-Rspamd-Queue-Id: 3620018A2E1
X-Rspamd-Action: no action

Alejandro Colomar wrote:
>
> Hi!
>
> ISO C23 changed the specification of string search functions so that if
> the const qualifier is present in the input, the APIs preserve it in the
> output.
> <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#subsection.7.26.5>
>
> For example, memchr(3) and strchr(3) were previously specified as
>
>         alx@devuan:~$ stdc C11 memchr
>         void *memchr(const void *s, int c, size_t n);
>         alx@devuan:~$ stdc C11 strchr
>         char *strchr(const char *s, int c);
>
> They are now specified as
>
>         QVoid *memchr(QVoid *s, int c, size_t n);
>         QChar *strchr(QChar *s, int c);
>
> The new specification is only possible through macros, and only in
> calls.  Function pointers such as &memchr or &strchr, or calls that
> avoid the macro, such as (memchr)(p,0) or (strchr)(s,0), do not use the
> macro, and as such, still use the old function prototype.  However, the
> ability to do this is declared obsolescent by both ISO C and the glibc
> manual.  This means that the underlying functions might eventually be
> removed from the headers.
>
> glibc has implemented the C23 specification in glibc-2.43, in commit
> glibc.git cd748a63ab1a (2025-11-20; "Implement C23 const-preserving standard library macros").
>
> I've written a patch for musl, but it hasn't been applied yet:
> <https://www.openwall.com/lists/musl/2026/02/23/1>
>
> gnulib has recently added a new search function, strnul(3) --which we
> already document in a manual page--, and didn't include an underlying
> function, since it didn't make sense to add something already obsolete.
> I documented the strnul(3) API as if it were a set of C++ overloads:
>
>         char *strnul(char *s);
>         const char *strnul(const char *s);
>
> Now that I'm considering the documentation of the glibc changes, I'm
> wondering what's the most appropriate way to document them.  I have
> a few questions:
>
> -  In the SYNOPSIS, do you prefer QChar/QVoid or overload style?
>
>         QChar *strchr(QChar *s, int c);
>    vs
>         char *strnul(char *s);
>         const char *strnul(const char *s);

The second style is much more understandable.  The first style looks
like it operates on some kind of Unicode/wide character type and you
need to do some kind of conversion or at least a cast in order to use
it.  If QChar was italicized as it is in the C23 standard then it
would be more clear that it isn't an actual type name, but even then
it would require extra explanation as to what the actual type is.  The
user shouldn't have to go to another page just to find out that it
will work with a plain char * and they don't need to do anything
special.  The second form is fairly clear without any additional
explanation, although a brief mention in the description would be good
to avoid any potential confusion.

>
> -  If we document it as QChar/QVoid, I guess we should we add a
>    QChar(3)/QVoid(3) manual page documenting all of the details, to
>    avoid duplicating such details in each manual page.

I don't see any value in introducing QChar/QVoid in the man pages,
since it is easy to explain without that.  I suggest the two-line
synopsis and a mention in the description, which could be even shorter
than explaining that QChar is not the actual type and to see some
other man page for details.  If there were more qualifier combinations
or they had complicated interactions, and so there was a reason to
have just one central place to explain it, then introducing a new
concept with its own man page might be worthwhile.

>
> -  How much should we document the old function?  Should we keep that as
>    a historic detail in the QChar(3)/QVoid(3) page?

I suggest a sentence in the description stating that only the
non-const-qualified variant is used prior to C23 or when using a
function pointer.

 - Mark

>
> Any other comments?
>
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es>

