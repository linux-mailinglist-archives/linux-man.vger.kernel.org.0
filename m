Return-Path: <linux-man+bounces-5214-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJsLHUn9nGm/MQQAu9opvQ
	(envelope-from <linux-man+bounces-5214-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 02:22:17 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C86CF180744
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 02:22:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31334304BCF2
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 01:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057882356BE;
	Tue, 24 Feb 2026 01:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dilger-ca.20230601.gappssmtp.com header.i=@dilger-ca.20230601.gappssmtp.com header.b="a+75YYra"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2484922F75E
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 01:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771896130; cv=none; b=DpPYfVJOr0tl+t0Vgs99rNBIsdhDA55HhS6MmnakvIt79hy7pzpnaxLSaBD+095SQ3fPymsNETdzR71g2fmSkA5A5hvglmGVdB1JfFnIWkvuQOgKAyqqA5a2JXmVb3oanQfUOSXnJ57fzFA7mN5LMPIVU96Gm6uYR9N4m2DXhDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771896130; c=relaxed/simple;
	bh=fjI4ZvIRYPMPNNYDwAOz2nuqb4treeHdM568AtHgd4o=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=DsFrnoLSWrNfxNmXmFO6/bTgcPacrhb3wrAZqq1lswW6lsYU7aOrq2xT4ntkbRI/F9x9L1b5xhamUqlqNO5v3dekH1/w6h1cGKI+SzrR/LNQl71QWz+8iIaNNLkx2MdCzxNHyMbHDTPG0hTGz2+wS5/AqXO/FwTlA1R1IL3h2SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dilger.ca; spf=pass smtp.mailfrom=dilger.ca; dkim=pass (2048-bit key) header.d=dilger-ca.20230601.gappssmtp.com header.i=@dilger-ca.20230601.gappssmtp.com header.b=a+75YYra; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dilger.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dilger.ca
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2aaf59c4f7cso22565485ad.1
        for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 17:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dilger-ca.20230601.gappssmtp.com; s=20230601; t=1771896128; x=1772500928; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MZKvknsqXez/S00fWzIWlvyAa1NgW4XxGR8ZrpyWy6k=;
        b=a+75YYraNOA/wZRoN3qm4wqT0CHBVr5DiSqnsyEEKOrG7i975xFcHQ24Inb05v74Kf
         dHfl5+ZLmfxfycprLNLTiKThWpX9M4QbqOPy4YtxT7hzmO2Qb6xzgRxcNN0CyAajpFuO
         TLch3ZVZ3wnqLw+E7w6PAd8Flge+rivATfNk8huU9nzwGScRYDwMauov5B2pbVEuiRNZ
         qAPLRt2Qk57iMQEjD6bFQkDKwAS0I0oTPWLd19Tpt3bflBwOkN4pOnZiPtzgYz4St+jo
         mj8m7tVYtT+zlGdWx4xZulesesoIauEH602gBrfYJm/NXZMvykR5VbsNF0od9qpEYXuo
         EjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771896128; x=1772500928;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MZKvknsqXez/S00fWzIWlvyAa1NgW4XxGR8ZrpyWy6k=;
        b=J2FiDZhA6APEyUIygwpaJT/goTx4J6ae9tmb1usJAgaV0ahswGwlcRjXIwJV+QfDFC
         zMqTNnZ0fj7b3gmPNoHruHlPenMGKRjQuROaeIm+X+PD+fjtWTBt3Ze0Hee2M5zrb92A
         5vWOvpvwNgjH789/ab7S14flXoRSqvTvoKG7N8GEOEfnCH/UBmEV/u1Cpg0pbQ9m4Ohi
         HVXRDWouWWsMMiUm8lOQuDB3VxDrexqqGNzrMaveEUU7cUpprV25GxXR7D1WhlfO+IHD
         5UU0J9r4CA/0TA7fM02BhvqI9/cbJ3Hgb61teeLTWtdzU/4iF/hwNIbDwOElcv+gqWn0
         jWCA==
X-Forwarded-Encrypted: i=1; AJvYcCXrteW7b1oJIfcS/2d2wMrhF0lAJicJgRBlxzTgyXKlp2psrJhjQUM5lc29HwAdEhORiYeuG8tQQ+A=@vger.kernel.org
X-Gm-Message-State: AOJu0YzJbZFhJFfKMfo5GEuykV/UTrWGslASceNzMJ2uGuaV7CbA3oge
	cxgPcP+8KcQwbttvExZUxyoiyRNdeR8hx0tKWZYK6zC7e4TZT6nqehi7LTIf5kll4II=
X-Gm-Gg: ATEYQzwd9e+zNpTsoeKksZz+yEuhbaB+QFwE/zgjPJq95dOt0gTUwwC2hRvxkViqmI5
	jAEUDSffgYoW91SXZVSXcRzBW6RFTgcQBbQYJwPkiU4GMaWCEOpqwoKNQmCm9TnPFTx+dOHUxHX
	aDQIpxEnIYhEkk4gJhcVq7gaKqiUE0pp9hOTRdYA/tP3kqAHcQdyC7myeE0dZTZAexK35N0eVa5
	Q7NwHYPgLeOBdcZ+3WJ3wYpBHljLInkTPiumHI1sPxjailgEIfQiPaL3Lf6yg3DpP0NAOLRNePE
	UjL6RjDlhIMxlHT2zIuJKCdE+wqZ0Zmm5MLmcku9cfOdPLZgD7oEIBtwB0uzy/qOWFnBUafT227
	p7HPraQglAbyR+JeymG3EoT5Glyvd6a/dItAJ54wLAnvPqA6adc15WGNZTqbMnQ6XvgvATvQgb9
	Cy4pZHV2rgP3zLjjTugzQrlLNPV1AwNEuvVIS6gm5OPGwaSinAu4pN6ZmrsGlky1dxKN/uoRRKO
	TCW3A==
X-Received: by 2002:a17:903:2445:b0:2a7:cb46:706e with SMTP id d9443c01a7336-2ad744edbfemr116193835ad.35.1771896128402;
        Mon, 23 Feb 2026 17:22:08 -0800 (PST)
Received: from smtpclient.apple (S01068c763f81ca4b.cg.shawcable.net. [70.77.200.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adaa3b2b9csm384995ad.1.2026.02.23.17.22.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2026 17:22:07 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.100.1.1.5\))
Subject: Re: Writing more than 4096 bytes with O_SYNC flag does not persist
 all previously written data if system crashes
From: Andreas Dilger <adilger@dilger.ca>
In-Reply-To: <20260223193238.GA63263@macsyma-wired.lan>
Date: Mon, 23 Feb 2026 18:21:56 -0700
Cc: Alejandro Colomar <alx@kernel.org>,
 Vyacheslav Kovalevsky <slava.kovalevskiy.2014@gmail.com>,
 linux-ext4@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-man@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <B5E6D67C-F581-4C95-BA16-F7CF45C60C6E@dilger.ca>
References: <3d8f73f4-3a64-4a86-8fc9-d910d4fa3be1@gmail.com>
 <174A8D06-B9B6-4546-A528-7A814D538208@dilger.ca>
 <20260219133244.GB69183@macsyma-wired.lan> <aZxLxum4WFYKbx2O@devuan>
 <20260223193238.GA63263@macsyma-wired.lan>
To: Theodore Tso <tytso@mit.edu>
X-Mailer: Apple Mail (2.3864.100.1.1.5)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[dilger-ca.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5214-lists,linux-man=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[dilger.ca];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[dilger-ca.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilger@dilger.ca,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C86CF180744
X-Rspamd-Action: no action

On Feb 23, 2026, at 12:32, Theodore Tso <tytso@mit.edu> wrote:
>=20
> On Mon, Feb 23, 2026 at 01:46:54PM +0100, Alejandro Colomar wrote:
>> Hi Ted, Andreas,
>>=20
>>> The parenthetical comment in the second paragraph needs to be =
removed,
>>> since fsync specifices that all dirty information in the page cache
>>> will be flushed out.
>>=20
>> Would you mind checking the text in VERSIONS (since there's a =
reference
>> to it right next to the text you're proposing to remove)?  I suspect =
it
>> will also need to be updated accordingly.  I don't feel qualified to
>> touch that text by myself.
>=20
> The text in VERSIONS is not incorrect, in that it is talking about the
> distinction of O_SYNC and O_DSYNC in terms of which kinds of metadata
> will be persisted.
>=20
> However, the reason why all of this information regarding Synchronized
> I/O is in VERSIONS is describing the historic behaviour of Linux
> version 2.6.33 versus more modern versions of Linux.  But 2.6.33 dates
> from February 24, 2010 --- 16 years ago.  So it might be simpler if we
> simply dropped this kind of historical information.  But if you do
> want to keep it, we should move the bulk of that inforamtion into
> O_SYNC and O_DSYNC.
>=20
> So maybe:
>=20
>       O_DSYNC
>              Write  operations  on the file will complete according to =
the
>              requirements of synchronized I/O data integrity =
completion.

Should this be more specific to say "on a file descriptor opened with =
this flag" or "on this file descriptor", since the original thread was =
about whether *any* data written to the "file" would also be =
persisted...

>              By the time write(2) (and similar) return, the  output  =
data  has
>              been  transferred to the underlying hardware, along with =
any file
>              metadata that would be required to retrieve that data.
>=20
>      See VERSIONS for a description of how historial versions
>      of the Linux kernes from 2010 behaved.
>=20
>       O_SYNC Write  operations  on the file will complete according to =
the re=E2=80=90
>              quirements of synchronized I/O file integrity completion =
(by con=E2=80=90
>              trast with the synchronized I/O data  integrity  =
completion  pro=E2=80=90
>              vided by O_DSYNC.)

Same, "on this file descriptor" or similar.

>              By the time write(2) (or similar) returns, the output
>              data and all file metadata associated inode for the
>              opened file have been transferred to the underlying
>              hardware.
>     =20
>      See VERSIONS for a description of how historial versions
>      of the Linux kernes from 2010 behaved.
>=20
>    VERSIONS
>       Before Linux 2.6.33, Linux implemented only the O_SYNC flag for
>       open().  However, when that flag was specified, most
>       filesystems actually pro=E2=80=90 vided the equivalent of =
synchronized
>       I/O data integrity completion (i.e., O_SYNC was actually
>       implemented as the equivalent of O_DSYNC).
>=20
> I'd suggest dropping everything else in VERSIONS, including the
> discussion of O_RSYNC.  All of that is much more appropriate for a
> tutorial.

IMHO, agreed.  If users are running really old versions of Linux then it
is likely they will have suitably old versions of the man pages as well.
There has to be some balance between highlighting potential interop =
issues
that an application developer might see vs. cluttering the text so that
readers are not clear _what_ the right semantics are.

Cheers, Andreas

> If you really want to keep all of that text, perhaps it could be moved
> into a synchronized-io man page in section 7.  In that we can talk
> about the difference of fsync() and fdatasync(), which is interesting
> as a conceptual model, and conceptually it is similar to the O_SYNC
> and O_DSYNC.  But the difference of what data will be written back
> (the data that was written in the file descriptor where the
> O_SYNC/O_DSYNC flag was set, eitehr via open or fcntl, versus all
> buffered data in the buffer cache).  The synchronized-io man page
> could also have more of the information around O_DIRECT in one place.
>=20
>> If you'd write a patch, I'd appreciate that.
>=20
> Well, there's a question of what's the minimal change that is needed
> to fix out-and-out inaccuracies, and we can just delete some
> parenthetical comments.
>=20
> BTW, if we want to delete inaccurate information, I'd also suggest
> deleting the following text in the O_DIRECT section of the man page:
>=20
>      A semantically similar (but deprecated) interface for block
>      devices is described in raw(8).
>=20
> ----
>=20
> Then there's trying to rearrange the tutorial-style information for
> people who want to implement code which needs data persistence
> guarantees.  That's quite a lot more work, and while I'm happy to
> review or assist someone to write that more expansive tutorial
> material, it's not something I'm willing to sign up to do.
>=20
> ----
>=20
> Finally, there are some philosophical questions about what the goals
> of the Linux kernel man pages --- how important is having historical
> information (for exmaple O_DIRECT has a "since 2.4.10", which is 25
> years ago --- really)? and how important is there to have tutorial
> infomation and where should that information should be organized in
> the man page.
>=20
> My personal opinion is that the primary priority of the Linux man page
> is to document the specification of the kernel interfaces that we
> expose to user space.  Things like tutorial material and a descriptive
> of historical versions are of secondary importance.
>=20
> I'd also advocate dropping historical information for kernel versions
> which are older than say, 7 years.  Curretly the oldest LTS kernel
> which is supported upstream is 5.10, which was originally released in
> 2020, and will EOL by end of 2026.  The Linux kernel 5.0 was released
> on March 3, 2019, so using a 7 year lookback means that explanation
> about how the Linux kernel in 2.4.x, 2.6.y, 3.x, 4.x, etc. can be
> dropped from the man pages, since IMHO it will reduces a lot of noise
> that will likely confuse readers.
>=20
> But that's a call for Alex and the man pages project to make.
>=20
> Cheers,
>=20
> - Ted


