Return-Path: <linux-man+bounces-1814-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3621E9B96F8
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 18:59:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6770F1C20C5F
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 17:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB03F1CC8AF;
	Fri,  1 Nov 2024 17:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b="nNFO+qhd"
X-Original-To: linux-man@vger.kernel.org
Received: from popular-llyr.relay-egress.a.mail.umich.edu (relay-egress-host.us-east-2.a.mail.umich.edu [13.59.128.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908B945016
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 17:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=13.59.128.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730483959; cv=none; b=egdcc0yhjoVDC4Y3ebrA24yYMqP7fl9lRwI+Pj0dCTyNK2eBWH8ioGGm3/ln3xxkxu9etvhshB3HAALygt+Phb7cjjPKMeSL5deam8nRARAA9GOFw3V5YR6vWjGFDpiYYwXylxwCJ1wPN7Egv7E0c0pc6IwO7JD81d6V/QJHEQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730483959; c=relaxed/simple;
	bh=EH77+EtWXZ0fOj/PNuKXM2NJK1jJHP7brdNJQYyeF/I=;
	h=To:cc:From:Subject:In-reply-to:References:MIME-Version:
	 Content-Type:Date:Message-ID; b=jTghaV4YiI8M+Up/wurukw7ohuA5xWqHL5ednqyQF5xSHJVjcrCk50p+UMOSV0R1M8bYA+L6GNOrINVw4kvhdE7sIzfwYCtyTZqoTXXXQi8jQsLz/oY6dSL0H7mcUqeJ1aX/EiFRMd+mZZhYbKyV2CdBAiRm2IqdJ9qFAwwVdz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu; spf=pass smtp.mailfrom=umich.edu; dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b=nNFO+qhd; arc=none smtp.client-ip=13.59.128.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=umich.edu
Received: from noble-firbolg.authn-relay.a.mail.umich.edu (ip-10-0-74-173.us-east-2.compute.internal [10.0.74.173])
	by popular-llyr.relay-egress.a.mail.umich.edu with ESMTPS
	id 67251678.7E9FC97.5C5E6842.207719;
	Fri, 01 Nov 2024 13:57:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umich.edu;
	s=relay-1; t=1730483831;
	bh=6kcdcdhhxqX0fu4BrJOGYoCEIoFHC/OzVZP3DbXOyv0=;
	h=To:cc:From:Subject:In-reply-to:References:Date;
	b=nNFO+qhdZZhtV7fJtm27d7xP0QXxI7hAMIltuUU2zTwFYVGR6dg2Mzd+heYhwG7wp
	 A2wUEqb6mWyo5hJkfAoWhgdfMehW97J22gszoVSsZktcMcz5KnQixNxKS8hbAsE8WT
	 +oXgnLaB0EDhRpTSpZ4obfLewQ8zO561gg/pRT6k5CJSbeXmZotOVCPBu9qAPwq3f/
	 Yy5JFnGEnNpfLKaL2cvHnt+rHhdKrtVhhAAZT3fe36W6ZB8yztNbiq+jtyVH2MbCEr
	 bZHuEB8zSjcp3o/RRF/IxA3aqIt1OcxHka4App1PIyXImChiqfmcoijTn1iesdwveJ
	 5RZmV2g0gp9Sw==
Authentication-Results: noble-firbolg.authn-relay.a.mail.umich.edu; 
	iprev=pass policy.iprev=172.221.12.240 (syn-172-221-012-240.res.spectrum.com);
	auth=pass smtp.auth=minshall
Received: from localhost (syn-172-221-012-240.res.spectrum.com [172.221.12.240])
	by noble-firbolg.authn-relay.a.mail.umich.edu with ESMTPSA
	id 67251677.14B01CDD.89B9DF8.3205556;
	Fri, 01 Nov 2024 13:57:11 -0400
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
From: Greg Minshall <minshall@umich.edu>
Subject: Re: getaddrinfo_a man page: add notification example?
In-reply-to: <20241101134653.3vwbgzk3ffegckzh@devuan>
References: <863308.1724581040@archlinux> <4vdd7x3bdhpomg5epf4huwbdsytvgd2qqgohyavpsjmqgwperv@tx2ytsol5ymv> <864874.1724585353@archlinux> <20241101134653.3vwbgzk3ffegckzh@devuan>
Comments: In-reply-to Alejandro Colomar <alx@kernel.org>
   message dated "Fri, 01 Nov 2024 14:46:53 +0100."
X-Mailer: MH-E 8.6+git; nmh 1.8; Emacs 29.4
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <76179.1730483827.1@archlinux>
Date: Fri, 01 Nov 2024 10:57:07 -0700
Message-ID: <76180.1730483827@archlinux>

hi, Alejandro,

thanks for the e-mail and code inspection.

> > static char notification = 'n';
> 
> Would it be better to use an enum instead of comments?
> 
> 	enum {
> 		NOTIFICATION_NONE = 'n',
> 		NOTIFICATION_SIGNAL = 's',
> 		NOTIFICATION_CALLBACK = 'c'
> 	};

that works.  i like that, by initializing the tags with, e.g., " = 'n'",
i can still use the user's input to set values, without needing some
sort of a lookup.

: echo -ne 'n signal\na example.com\nw 0' | ./manpage-like-gai


> >     if (buf[strlen(buf) - 1] == '\n')
> >         buf[strlen(buf) - 1] = 0;
> 
> If the string does not contain a newline, it probably means something is
> wrong.  Returning as if all were good is probably not a good idea.

here i'm thinking of the case where the program gets its input via a
pipe, which may present an EOF without a trailing newline.  i'll be
to follow your guidance here.


> >     static struct sigevent senull; /* static, so initialized to zero */
> >     static struct sigaction sanull; /* static, so intitialized to zero */
> 
> These comments are redundant.  Please remove them.  Maybe add a blank
> line between static variables and automatic ones to make it more
> evident.

sure, thanks.


> > /* List all requests. */
> > static void
> > list_requests(void)
> > {
> >     int ret;
> >     char host[NI_MAXHOST];
> >     struct addrinfo *res;
> > 
> >     for (size_t i = 0; i < nreqs; i++) {
> >         printf("[%02zu] %s: ", i, reqs[i]->ar_name);
> >         ret = gai_error(reqs[i]);
> > 
> >         if (!ret) {
> >             res = reqs[i]->ar_result;
> > 
> >             ret = getnameinfo(res->ai_addr, res->ai_addrlen,
> >                               host, sizeof(host),
> >                               NULL, 0, NI_NUMERICHOST);
> >             if (ret) {
> >                 fprintf(stderr, "getnameinfo() failed: %s\n",
> >                         gai_strerror(ret));
> >                 exit(EXIT_FAILURE);
> >             }
> >             puts(host);
> >         } else {
> >             puts(gai_strerror(ret));
> 
> If you invert the conditional, you can add a continue after this, and
> unindent the non-error code.

that seems nice.  i think i didn't touch this code, but let me know if
you'd like me to add this to my submission.


again, thanks.

cheers, Greg


