Return-Path: <linux-man+bounces-3089-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EC6ACC663
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 14:22:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E36A16F34B
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 12:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E514A2AE6C;
	Tue,  3 Jun 2025 12:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YsrW8gR5"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D283E1E480
	for <linux-man@vger.kernel.org>; Tue,  3 Jun 2025 12:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748953325; cv=none; b=UIKjAmNRy0XCYQtPN47BHBgcIVohieg7pxtaX4S8aHCgXVekRkj5x6FwhTnSDBow/zF8P0zj5NADGlpMa2pgjpghHYb5ZcOyRPoTCtB7u42Hz+CnterjhDU//eDwRArR6BKvI8dBrvcl8Ht1nPFUeen3IcrCGJYTqI7ykfwcihM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748953325; c=relaxed/simple;
	bh=ohgRYbgQElkrhsW+DqO189N/VXsqHtJPZYlbcN0Repw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IL6MlboBlbgyoneDerauyfkKpusd0FwXOXJeIco9tYEcAlNbVbFoVOLvwY4j8nK5joHhKEbRBs4AwinJLE4hW8Wzw3At5sFF5KN1F0jQWPtpdtv2Ppw+k2MPH0tc9k/Ilroa/M9NgLQCNmpiV6NGN52wz+TXB4qWlMIsQe/A5yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YsrW8gR5; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748953322;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TPdj6o3/W/gqiaoyuOhc6R6ynhk5jAUhQcuVoJbXcEs=;
	b=YsrW8gR5cl4e3UQtHvu70h1zkI7tJ8oGBdAZiswqhUxjSKpwjPGk32B45floWG6dVy/vQo
	F7qq1V1RDYKsIFlJAyax89616+cYJlt0BKgqQVBhaiH+gxD5MXsp33FoAyckBc+T7erELe
	txY9280SE8CsCtcm9UlyN60cOh46Ah8=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-436-oThQl73cNsqRfbESv8vGCA-1; Tue, 03 Jun 2025 08:22:01 -0400
X-MC-Unique: oThQl73cNsqRfbESv8vGCA-1
X-Mimecast-MFC-AGG-ID: oThQl73cNsqRfbESv8vGCA_1748953320
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3119ba092aeso8923988a91.1
        for <linux-man@vger.kernel.org>; Tue, 03 Jun 2025 05:22:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748953320; x=1749558120;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TPdj6o3/W/gqiaoyuOhc6R6ynhk5jAUhQcuVoJbXcEs=;
        b=j6K1TaflY7gQRWM4e6yudKszOgEMPPua+/OACiH1VZO37cJgwVsS0xgX75Umauv9z0
         9DBDVQmNh0vLxrAPIrxZlz1ZvmYxmVNTXRwfQTwdEWpEVG0xAtj0Ahl8anWfF9kcmptI
         dlYKZW3Nl/TsIZi4sjGI1dcKciCQV7sdYCcs2mNmEloxJtXvYa9p0ixzyhrB8EDo6Kt9
         9L2pn5VBGAZLi7DjaZBCag4Qh5IzWdeLYyB+xqyLnmweczPd98AkFxDWISQ4zzXuoHGO
         1ls119rvZvE4nwDcmbzTuOOEP6K6QGuYtn6GdCLF6kIzyoa80GICj/0Tal/CwbOghFfH
         g7Qg==
X-Gm-Message-State: AOJu0YzHnau6bKRuvhPdgWBB5bQYKjhK+t72yX8xIky14tE8C7BT5lSV
	JPqnvjsLlT6fYJGX0IGcc6AXJWo4iarJK3l9VeffW9rui4WL8uXcUpbcBE1aXocxWEM+d8zMOEu
	v16gkACWh6Sdlpp+kn4of4pro6FKTe5rZqKnziaFomAKmq5XQFmArZUD1ju4Sq9P5SORKBoMn36
	+oFo+N3AK7XIOc+jV/p/IOSwhm73pyiFGHplcm11vIguGpgnU=
X-Gm-Gg: ASbGnctRPK8TjWN4Ll2JrIZytb5dJzc+j5C6/6cmGBJwGw+X87hFv7iGlVVq9q//YP1
	B3NJPbtOHwyxTp0nHnze8mGyfTEp8jXdQuBDixaQ1eoYOqQJzUAZuGdLUl9RCr6uWNwE=
X-Received: by 2002:a17:90b:2f0f:b0:2f4:4003:f3ea with SMTP id 98e67ed59e1d1-312504538f3mr23199510a91.33.1748953319652;
        Tue, 03 Jun 2025 05:21:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfD1JukunsSldgGj/dwLkSODIO+LXmNcR2ejYoYfPYOL9yJ3DavO9q97T7Ndh8ijC8mwRcu3ncVxsOhgcWWYY=
X-Received: by 2002:a17:90b:2f0f:b0:2f4:4003:f3ea with SMTP id
 98e67ed59e1d1-312504538f3mr23199484a91.33.1748953319330; Tue, 03 Jun 2025
 05:21:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
In-Reply-To: <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
From: Mark Naughton <mnaughto@redhat.com>
Date: Tue, 3 Jun 2025 13:21:47 +0100
X-Gm-Features: AX0GCFvhZC-TzxmdUD3CMlYZ7IiwxKfypXAyt0VcnC56b3dFtQRzwYHxvPODnrA
Message-ID: <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
Subject: Re: Forward Deceleration Changes
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The [.identifier] notation is fine, it serves a purpose. I don't know
what value adding the forward declarations does, they are more for the
compiler, not the programmer.
When I first got the updated man pages, I thought the forward
declarations were the first arguments to the function.

I suspect new C programmers would find the forward declaration
prototypes quite confusing also since they are not even part of the
language.

When I open a man page I want to see "what arguments do I pass and in
what order". With this change you have to parse the prototype for the
semi-colon
to see the start of the args.

Mark

On Tue, Jun 3, 2025 at 12:40=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Mark,
>
> On Tue, Jun 03, 2025 at 12:04:05PM +0100, Mark Naughton wrote:
> > I noticed that recent man pages have started to include forward
> > declarations in function arguments with sizes.
>
> Yes.  That happened mainly in
>
>         commit d2c2db8830f8fcbb736bdea52b398257447bef6b
>         Author:     Alejandro Colomar <alx@kernel.org>
>         AuthorDate: Fri Mar 14 18:33:41 2025 +0100
>         Commit:     Alejandro Colomar <alx@kernel.org>
>         CommitDate: Fri Mar 14 18:55:19 2025 +0100
>
>             man/: SYNOPSIS: Use GNU forward-declarations of parameters fo=
r sizes of array parameters
>
>             This syntax has been proposed for standardization in N3433.
>
>             Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3433=
.pdf>
>             Cc: Christopher Bazley <chris.bazley.wg14@gmail.com>
>             Cc: Martin Uecker <uecker@tugraz.at>
>             Cc: Joseph Myers <josmyers@redhat.com>
>             Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
> Prior to that, there was
>
>         commit 1eed67e75deff662dffce3195e55e608809eaafd
>         Author:     Alejandro Colomar <alx.manpages@gmail.com>
>         AuthorDate: Fri Aug 26 22:48:26 2022 +0200
>         Commit:     Alejandro Colomar <alx@kernel.org>
>         CommitDate: Thu Nov 10 00:44:59 2022 +0100
>
>             Various pages: SYNOPSIS: Use VLA syntax in function parameter=
s
>
>             The WG14 charter for C23 added one principle to the ones in
>             previous standards:
>
>             [
>             15.  Application Programming Interfaces (APIs) should be
>             self-documenting when possible.  In particular, the order of
>             parameters in function declarations should be arranged such t=
hat
>             the size of an array appears before the array.  The purpose i=
s to
>             allow Variable-Length Array (VLA) notation to be used. This n=
ot
>             only makes the code's purpose clearer to human readers, but a=
lso
>             makes static analysis easier.  Any new APIs added to the Stan=
dard
>             should take this into consideration.
>             ]
>
>             ISO C doesn't allow using VLA syntax when the parameter used =
for
>             the size of the array is declared _after_ the parameter that =
is a
>             VLa.  That's a minor issue that could be easily changed in th=
e
>             language without backwards-compatibility issues, and in fact =
it
>             seems to have been proposed, and not yet discarded, even if i=
t's
>             not going to change in C23.
>
>             Since the manual pages SYNOPSIS are not bounded by strict C l=
egal
>             syntax, but we already use some "tricks" to try to convey the=
 most
>             information to the reader even if it might not be the most le=
gal
>             syntax, we can also make a small compromise in this case, usi=
ng
>             illegal syntax (at least not yet legalized) to add important
>             information to the function prototypes.
>
>             If we're lucky, compiler authors, and maybe even WG14 members=
, may
>             be satisfied by the syntax used in these manual pages, and ma=
y
>             decide to implement this feature to the language.
>
>             It seems to me a sound syntax that isn't ambiguous, even if i=
t
>             deviates from the common pattern in C that declarations _alwa=
ys_
>             come before use.  But it's a reasonable tradeoff.
>
>             This change will make the contract between the programmer and=
 the
>             implementation clearer just by reading a prototype.  For exam=
ple,
>
>               size_t strlcpy(char *restrict dst, const char *restrict src=
,
>                              size_t size);
>
>                 vs
>
>               size_t strlcpy(char dst[restrict .size], const char *restri=
ct src,
>                              size_t size);
>
>             the second prototype above makes it clear that the 'dst' buff=
er
>             will be safe from overflow, but the 'src' one clearly needs t=
o be
>             NUL-terminated, or it might cause UB, since nothing tells the
>             function how long it is.
>
>             Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2611=
.htm>
>             Cc: Ingo Schwarze <schwarze@openbsd.org>
>             Cc: JeanHeyd Meneide <wg14@soasis.org>
>             Cc: Martin Uecker <uecker@tugraz.at>
>             Cc: <gcc@gcc.gnu.org>
>             Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>
> > These are a C2Y
> > proposal.
>
> And an old GNU extension:
> <https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html#Arrays-of-Variab=
le-Length>
>
> > I was wondering what the justification for the change is?
>
> For the initial change to use [.identifier] notation, the rationale is
> documentation.  Otherwise, it's unclear which parameters are numbers of
> elements for which pointers.  In some pages it's obvious; in others,
> it's not so obvious.
>
> Joseph Myers had concerns with that notation, since it was neither
> standard nor an existing vendor extension.  We (Joseph, Martin, and I)
> had long discussions about adding support for it in GCC, but ended up
> agreeing that GNU's existing syntax is better.
>
> > Shouldn't the man pages stick to standard declarations to avoid
> > confusion?
>
> I don't think so, and this has never been the case.  You can for example
> have a look at the open(2) manual page in man-pages-5.13, when
> Michael Kerrisk was the maintainer of the project.
>
> alx@devuan:~/src/linux/man-pages/man-pages/master$ git status
> HEAD detached at man-pages-5.13
> nothing to commit, working tree clean
> alx@devuan:~/src/linux/man-pages/man-pages/master$ man ./man2/open.2 | gr=
ep 'int open('
>      int open(const char *pathname, int flags);
>      int open(const char *pathname, int flags, mode_t mode);
>
> That wasn't standard syntax.  It's not valid to redeclare a function
> with a different prototype.  It was useful, though, to show the only two
> valid ways that one can call this function.  I've improved it to reduce
> confusion, by using standards-conforming syntax:
>
> $ man 2 open | grep -A1 'int open('
>      int open(const char *path, int flags, ...
>                 /* mode_t mode */ );
>
> In this case, I decided that standard syntax is better, because it
> documents that the function is variadic, which warns the programmer that
> it should be extra careful when using it, as there's less type safety
> than with usual functions.
>
> In the case of array parameters, I think documenting the parameters as
> arrays and their number of elements has more weight than using standard
> syntax.
>
> > e.g fread() and fwrite()
> >
> > https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man/=
man3/fread.3?id=3Dd2c2db8830f8fcbb736bdea52b398257447bef6b
>
> Let's hope people will catch up with this feature soonish.  Many have
> reported good feedback about it; I think more than those that have
> reported confusion.
>
> >
> > Thanks,
> > Mark Naughton
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>


