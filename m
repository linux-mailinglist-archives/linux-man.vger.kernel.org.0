Return-Path: <linux-man+bounces-1369-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D78392A4B0
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 16:31:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5ED72B213F4
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 14:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526801E50B;
	Mon,  8 Jul 2024 14:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="P1wI0b7O"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003191C06
	for <linux-man@vger.kernel.org>; Mon,  8 Jul 2024 14:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720449057; cv=none; b=bR0QQG7Ap10O6rHD2FDLaWsqeWrDa6W70TRwNmov1qjywIzdbWI3kXFnmb+66Y56OyZS6TNqlSMEN93C6UOpkSphIt+YQgeNENDzjz7PY9Zrz+qpJBhef2CSVYm+cRc7TYL0INN8bl8P4k73h2Bz4k/nftkbtN66n2vhAxJlvHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720449057; c=relaxed/simple;
	bh=jnTDiFSFKk+DeGpA6i3Li7tovk4z+Mf8EceV1mUzjtk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bum3etK0u7jf6/JPQDu7J66pacBKExsYx+Zr8VL1OHNOQLXkkprRyS8xXgOXhu9bqrhXNObbWxPmhHajfcL77HAi7piHjsL0A6h0+BVTKYvvKX49ijw0bpHdDO6DTjifphSbrfQ0WdrnhwaRx22SQw8f3HfyaAnN8iFPlDcv1Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=P1wI0b7O; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720449054;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=90nXcvtVQw7jQPbh/iGQgfXK+uYY+y/HoMtWSc/QB7E=;
	b=P1wI0b7ODMQYBjQjIU3OWqvLjKgmFUZBS0QGklZ2qIdr+7apVq8CwRMQlwyuEh6W82/xEG
	CHiJgRmUzKuVqeAHINGSJDcfP18Tku+O3TYdXxrCOZMzAhbS2BpvJ4oABy7lNoKtgTDEMN
	bd2+ln02taMAgyyJ/lj6isH6G7OtGNI=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-103-Yg1vwWEXPsa8-MrfVdnq2w-1; Mon, 08 Jul 2024 10:30:52 -0400
X-MC-Unique: Yg1vwWEXPsa8-MrfVdnq2w-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-79f006f9f14so317877685a.0
        for <linux-man@vger.kernel.org>; Mon, 08 Jul 2024 07:30:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720449052; x=1721053852;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=90nXcvtVQw7jQPbh/iGQgfXK+uYY+y/HoMtWSc/QB7E=;
        b=rXWMwEizJ6IAPDKyqE59camlKMpyfPLB9m2WJabKhPRgjcxKao/zXCOq5G3vy49g5s
         BZuK3Ft7H1/+569mgO1H5K1B6fSjtnffitdC7WZVgg/jGXO+ZPCwM8czqit7Yk+YTgT8
         K7E7divLyYPwVNKv5PQbTtG9uURS2UD+0EQMARD3nEKkk7Vw4MIIRieNQLtQ6HIUAi6D
         +RhZ/tIftNGKBLwhvDEEOyLQDPxBvXzrF13XBuJ+ecW8JLO+fqdHl3U0xiNTlaHXUpQY
         5t4mnDG5z9tEGlXrtsTTjhNbHOvct/Za87oxD5/jFcG2fEdwUNC0/ZuptFHQiH61Gs7S
         Gseg==
X-Forwarded-Encrypted: i=1; AJvYcCWvh1DnuAg4kh2y42vW9PUtqIaO9narsI6WH3/8DvpVa1m1iAR2GLnpUWLysGqCCuPLduKVQTZzf/wd/dnwNf2wU5QgywzRN6qm
X-Gm-Message-State: AOJu0YyMK5YOAm84aw3vSVFWJIyFxZYt7oC1EFC9XZ8uzk7Nu+HSAtBD
	CnKUp8K5tliyQUrPnu0hRtiWgx6TDdQYrb99eT/Az7yQuu9BsyYsXHLg1qWIjuR+8qPVQ5PMBKp
	8TSmVUrMPBxKzdRIwoIdATDa20LipryrcWmWl1paIPlsSmnB0dXEbMaPlEQ==
X-Received: by 2002:a05:620a:4089:b0:79f:12e9:1e51 with SMTP id af79cd13be357-79f12e91ff5mr280737185a.5.1720449050302;
        Mon, 08 Jul 2024 07:30:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkmk45iwMx62DSMezna23UInic+sD4ztdtkrV72ps7GjLCDic1vdBb8KHDrvAHxzcpv98I1Q==
X-Received: by 2002:a05:620a:4089:b0:79f:12e9:1e51 with SMTP id af79cd13be357-79f12e91ff5mr280731885a.5.1720449049770;
        Mon, 08 Jul 2024 07:30:49 -0700 (PDT)
Received: from t14s.localdomain (c-76-28-97-5.hsd1.ma.comcast.net. [76.28.97.5])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79f14e684f5sm40482185a.51.2024.07.08.07.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 07:30:49 -0700 (PDT)
Message-ID: <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
From: David Malcolm <dmalcolm@redhat.com>
To: Alejandro Colomar <alx@kernel.org>, Paul Eggert <eggert@cs.ucla.edu>
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, 
 jakub@redhat.com, uecker@tugraz.at, lh_mouse@126.com,
 jwakely.gcc@gmail.com,  Richard.Earnshaw@arm.com, sam@gentoo.org,
 ben.boeckel@kitware.com,  heiko.eissfeldt@siemens.com,
 libc-alpha@sourceware.org
Date: Mon, 08 Jul 2024 10:30:48 -0400
In-Reply-To: <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
References: <20240705130249.14116-2-alx@kernel.org>
	 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
	 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
	 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sun, 2024-07-07 at 14:42 +0200, Alejandro Colomar wrote:
> Hi Paul,
>=20
> On Sun, Jul 07, 2024 at 12:42:51PM GMT, Paul Eggert wrote:
> > On 7/7/24 03:58, Alejandro Colomar wrote:
> >=20
> > > I've incorporated feedback, and here's a new revision, let's call
> > > it
> > > v0.2, of the draft for a WG14 paper.
> > Although I have not followed the email discussion closely, I read
> > v0.2 and
> > think that as stated there is little chance that its proposal will
> > be
> > accepted.
>=20
> Thanks for reading thoroughly, and the feedback!
>=20
> > Fundamentally the proposal is trying to say that there are two
> > styles X and
> > Y for declaring strtol and similar functions, and that although
> > both styles
> > are correct in some sense, style Y is better than style X. However,
> > the
> > advantages of Y are not clearly stated and the advantages of style
> > X over Y
> > are not admitted, so the proposal is not making the case clearly
> > and fairly.
> >=20
> > One other thing: to maximize the chance of a proposal being
> > accepted, please
> > tailor it for its expected readership. The C committee is expert on
> > =E2=80=98restrict=E2=80=99, so don=E2=80=99t try to define =E2=80=98res=
trict=E2=80=99 in your own way.
> > Unless merely
> > repeating the language of the standard, any definition given for
> > =E2=80=98restrict=E2=80=99
> > is likely to cause the committee to quibble with the restatement of
> > the
> > standard wording. (It is OK to mention some corollaries of the
> > standard
> > definition, so long as the corollaries are not immediately
> > obvious.)
> >=20
> > Here are some comments about the proposal. At the start these
> > comments are
> > detailed; towards the end, as I could see the direction the
> > proposal was
> > headed and was convinced it wouldn=E2=80=99t be accepted as stated, the
> > comments are
> > less detailed.
> >=20
> >=20
> > "The API may copy"
> >=20
> > One normally doesn=E2=80=99t think of the application programming inter=
face
> > as
> > copying. Please replace the phrase =E2=80=9Cthe API=E2=80=9D with =E2=
=80=9Cthe caller=E2=80=9D or
> > =E2=80=9Cthe
> > callee=E2=80=9D as appropriate. (Although =E2=80=98restrict=E2=80=99 ca=
n be used in places
> > other
> > than function parameters, I don=E2=80=99t think the proposal is concern=
ed
> > about
> > those cases and so it doesn=E2=80=99t need to go into that.)
>=20
> Ok.
>=20
> > "To avoid violations of for example C11::6.5.16.1p3,"
> >=20
> > Code that violates C11::6.5.16.1p3 will do so regardless of whether
> > =E2=80=98restrict=E2=80=99 is present. I would not mention C11::6.5.16.=
1p3 as it=E2=80=99s
> > a red
> > herring. Fundamentally, =E2=80=98restrict=E2=80=99 is not about the con=
sequences of
> > caching
> > when one does overlapping moves; it=E2=80=99s about caching in a more
> > general sense.
>=20
> The violations are UB regardless of restrict, but consistent use of
> restrict allows the caller to have a rough model of what the callee
> will
> do with the objects, and prevent those violations via compiler
> diagnostics.=C2=A0 I've reworded that part to make it more clear why I'm
> mentioning that.
>=20
> > =E2=80=9CAs long as an object is only accessed via one restricted point=
er,
> > other
> > restricted pointers are allowed to point to the same object.=E2=80=9D
> >=20
> > =E2=80=9Conly accessed=E2=80=9D =E2=86=92 =E2=80=9Caccessed only=E2=80=
=9D
>=20
> Ok.
>=20
> > =E2=80=9CThis is less strict than I think it should be, but this propos=
al
> > doesn=E2=80=99t
> > attempt to change that definition.=E2=80=9D
> >=20
> > I would omit this sentence and all similar sentences. Don=E2=80=99t
> > distract the
> > reader with other potential proposals. The proposal as it stands is
> > complicated enough.
>=20
> Ok.
>=20
> > =E2=80=9Creturn ca > a;=E2=80=9D
> > =E2=80=9Creturn ca > *ap;=E2=80=9D
> >=20
> > I fail to understand why these examples are present. It=E2=80=99s not
> > simply that
> > nobody writes code like that: the examples are not on point. I
> > would remove
> > the entire programs containing them, along with the sections that
> > discuss
> > them. When writing to the C committee one can assume the reader is
> > expert in
> > =E2=80=98restrict=E2=80=99, there is no need for examples such as these=
.
>=20
> Those are examples of how consistent use of restrict can --or could,
> in
> the case of g()-- detect, via compiler diagnostics, (likely)
> violations
> of seemingly unrelated parts of the standard, such as the referenced
> C11::6.5.16.1p3, or in this case, C11::6.5.8p5.=C2=A0=20
>=20
> > =E2=80=9Cstrtol(3) accepts 4 objects via pointer parameters and global
> > variables.=E2=80=9D
> >=20
> > Omit the =E2=80=9C(3)=E2=80=9D, here and elsewhere, as the audience is =
the C
> > standard
> > committee.
>=20
> The C standard committee doesn't know about historic use of (3)?=C2=A0
> That
> predates the standard, and they built on top of that (C originated in
> Unix).=C2=A0 While they probably don't care about it anymore, I expect my
> paper to be read by other audience, including GCC and glibc, and I
> prefer to keep it readable for that audience.=C2=A0 I expect the standard
> committee to at least have a rough idea of the existence of this
> syntax,
> and respect it, even if they don't use it or like it.
>=20
> > =E2=80=9Caccepts=E2=80=9D is a strange word to use here: normally one s=
ays
> > =E2=80=9Caccepts=E2=80=9D to talk
> > about parameters, not global variables.
>=20
> The thing is, strtol(3) does not actually access *endptr.=C2=A0 I thought
> that might cause more confusion than using "accepts".
>=20
> > Also, =E2=80=9Cglobal variables=E2=80=9D is not
> > right here. The C standard allows strtol, for example, to read and
> > write an
> > internal static cache. (Yes, that would be weird, but it=E2=80=99s
> > allowed.)
>=20
> That's not part of the API.=C2=A0 A user must not access internal static
> cache, and so the implementation is free to assume that it doesn't,
> regardless of the use of restrict in the API, so it is not relevant
> for
> the purpose of this discussion, I think.
>=20
> > I
> > suggest rephrasing this sentence to talk about accessing, not
> > accepting.
>=20
> I don't want to use accessing, for it would be inconsistent with
> later
> saying that *endptr is not accessed.=C2=A0 However, I'm open to other
> suggested terms that might be more appropriate than both.
>=20
> > =E2=80=9Cendptr=C2=A0access(write_only) ... *endptr access(none)=E2=80=
=9D
> >=20
> > This is true for glibc, but it=E2=80=99s not necessarily true for all
> > conforming
> > strtol implementations. If endptr is non-null, a conforming strtol
> > implementation can both read and write *endptr;
>=20
> It can't, I think.=C2=A0 It's perfectly valid to pass an uninitialized
> endptr, which means the callee must not read the original value.
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0char *end;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0strtol("0", &end, 0);
>=20
> If strtol(3) would be allowed to read it, the user would need to
> initialize it.
>=20
> > it can also both read and
> > write **endptr. (Although it would need to write before reading,
> > reading is
> > allowed.)
>=20
> Here, we need to consider two separate objects.=C2=A0 The object pointed-
> to
> by *endptr _before_ the object pointed to by endptr is written to,
> and
> the object pointed-to by *endptr _after_ the object pointed to by
> endptr
> is written to.
>=20
> For the former (the original *endptr):
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Since *endptr might be un=
initialized, strtol(3) must NOT
> access
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0the object pointed to by =
an uninitialized pointer.
>=20
> For the latter (the final *endptr):
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0The callee cannot write t=
o it, since the specification of the
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0function is that the stri=
ng will not be modified.=C2=A0 And in any
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case, such an access is u=
ltimately derived from nptr, not
> from
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*endptr, so it does not m=
atter for the discussion of *endptr.
>=20
> Of course, that's derived from the specification of the function, and
> not from its prototype, since ISO C doesn't provide such detailed
> prototypes (since it doesn't have the [[gnu::access()]] attribute).=C2=A0
> But
> the standard must abide by its own specification of functions,
> anyway.
>=20
> > =E2=80=9CThis qualifier helps catch obvious bugs such as strtol(p, p, 0=
)
> > and
> > strtol(&p, &p, 0) .=E2=80=9D
> >=20
> > No it doesn=E2=80=99t. Ordinary type checking catches those obvious bug=
s,
> > and
> > =E2=80=98restrict=E2=80=99 provides no additional help there. Please co=
mplicate the
> > examples
> > to make the point more clearly.
>=20
> To be pedantic, I didn't specify the type of p, so it might be (void
> *),
> and thus avoid type checking at all.=C2=A0 However, to avoid second
> guessing
> from the standards committee, I'll add casts, to make it more obvious
> that restrict is catching those.
>=20
> > =E2=80=9CThe caller knows that errno doesn=E2=80=99t alias any of the f=
unction
> > arguments.=E2=80=9D
> >=20
> > Only because all args are declared with =E2=80=98restrict=E2=80=99. So =
if the
> > proposal is
> > accepted, the caller doesn=E2=80=99t necessarily know that.
>=20
> Not really.=C2=A0 The caller has created the string (or has received it
> via a
> restricted pointer), and so it knows it's not derived from errno.
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0char buf[LINE_MAX + 1];
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fgets(...);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0n =3D strtol(buf, ...);
>=20
> This caller knows with certainty that errno does not alias buf.=C2=A0 Of
> course, in some complex cases, it might not know, but I ommitted that
> for simplicity.=C2=A0 And in any case, I don't think any optimizations ar=
e
> affected by that in the caller.
>=20
> >=20
> >=20
> > =E2=80=9CThe callee knows that *endptr is not accessed.=E2=80=9D
> >=20
> > This is true for glibc, but not necessarily true for every
> > conforming strtol
> > implementation.
>=20
> The original *endptr may be uninitialized, and so must not be
> accessed.
>=20
> > =E2=80=9CIt might seem that it=E2=80=99s a problem that the callee does=
n=E2=80=99t know if
> > nptr can
> > alias errno or not. However, the callee will not write to the
> > latter
> > directly until it knows it has failed,=E2=80=9D
> >=20
> > Again this is true for glibc, but not necessarily true for every
> > conforming
> > strtol implementation.
>=20
> An implementation is free to set errno =3D EDEADLK in the middle of it,
> as
> long as it later removes that.=C2=A0 However, I don't see how it would
> make
> any sense.
>=20
> If that's done, it's probably done via a helper internal function,
> which
> as said below, can use restrict for nptr, and thus know with
> certainty
> that nptr is distinct from errno.
>=20
> If that's done directly in the body of strtol(3) (the only place
> where
> it's not known that nptr is distinct from errno) we can probably
> agree
> that the implementation is doing that just for fun, and doesn't care
> about optimization, and thus we can safely ignore it.
>=20
> > To my mind this is the most serious objection. The current standard
> > prohibits calls like strtol((char *) &errno, 0, 0). The proposal
> > would relax
> > the standard to allow such calls. In other words, the proposal
> > would
> > constrain implementations to support such calls.
>=20
> I don't think it does.=C2=A0 ISO C specifies that strtol(3) takes a strin=
g
> as
> its first parameter, and errno is not (unless you do this:).
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(char *)&errno =3D "111";
>=20
> Okay, let's assume you're allowed to do that, since a char* can alias
> anything.
>=20
> I still don't think ISO C constrains implementations to allow passing
> (char *)&errno as a char*, just because it's not restrict.=C2=A0 Let's
> find
> an ISO C function that accepts a non-restrict string:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int system(const char *st=
ring);
>=20
> Does ISO C constrain implementations to support system((char
> *)&errno)?
> I don't think so.=C2=A0 Maybe it does implicitly because of a defect in
> the
> wording, but even then it's widely understood that it doesn't.
>=20
> > Why is this change worth
> > making? Real-world programs do not make calls like that.
>=20
> Because it makes analysis of 'restrict' more consistent.=C2=A0 The obviou=
s
> improvement of GCC's analyzer to catch restrict violations will
> trigger
> false positives in normal uses of strtol(3).

Hi Alejandro

I'm author/maintainer of GCC's -fanalyzer option, which is presumably
why you CCed me on this.  One of my GSoC 2022 students (Tim Lange)
looked at making use of 'restrict' in -fanalyzer, see e.g.=20
https://lists.gnu.org/archive/html/bug-gnulib/2022-07/msg00062.html

Based on Paul's comment here:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D99860#c2 (and its
references) I came to the conclusion at the time that we should work on
something else, as the meaning of 'restrict' is too ambiguous.

Later, I added a new -Wanalyzer-overlapping-buffers warning in GCC 14,
which simply has a hardcoded set of standard library functions that it
"knows" to warn about.

Has the C standard clarified the meaning of 'restrict' since that
discussion?  Without that, I wasn't planning to touch 'restrict' in
GCC's -fanalyzer.

Sorry if I'm missing anything here; I confess I've skimmed through
parts of this thread.

Dave







>=20
> > =E2=80=9CBut nothing prohibits those internal helper functions to speci=
fy
> > that nptr
> > is restrict and thus distinct from errno.=E2=80=9D
> >=20
> > Although true, it=E2=80=99s also the case that the C standard does not
> > *require*
> > internal helper functions to use =E2=80=98restrict=E2=80=99. All that m=
atters is
> > the
> > accesses. So I=E2=80=99m not sure what the point of this statement is.
>=20
> If an implementation wants to optimize, it should be careful and use
> restrict.=C2=A0 If it doesn't, then it can't complain that ISO C doesn't
> allow it to.=C2=A0 It's actually allowed to optimize, but it has to do
> some
> work for it.
>=20
> > =E2=80=9Cm =3D strtol(p, &p, 0); An analyzer more powerful than the cur=
rent
> > ones
> > could extend the current -Wrestrict diagnostic to also diagnose
> > this case.=E2=80=9D
> >=20
> > Why would an analyzer want to do that? This case is a perfectly
> > normal thing
> > to do and it has well-defined behavior.
>=20
> Because without an analyzer, restrict cannot emit many useful
> diagnostics.=C2=A0 It's a qualifier that's all about data flow analysis,
> and
> normal diagnostics aren't able to do that.
>=20
> A qualifier that enables optimizations but doesn't enable diagnostics
> is
> quite dangerous, and probably better not used.=C2=A0 If however, the
> analyzer
> emits advanced diagnostics for misuses of it, then it's a good
> qualifier.
>=20
> Have a lovely day!
> Alex
>=20
> >=20
> > =E2=80=9CTo prevent triggering diagnostics in a powerful analyzer that
> > would be
> > smart enough to diagnose the example function g(), the prototype of
> > strtol(3) should be changed to =E2=80=98long int strtol(const char *npt=
r,
> > char
> > **restrict endptr, int base);=E2=80=99=E2=80=9D
> >=20
> > Sorry, but the case has not been made to make any such change to
> > strtol=E2=80=99s
> > prototype. On the contrary, what I=E2=80=99m mostly gathering from the
> > discussion is
> > that =E2=80=98restrict=E2=80=99 can be confusing, which is not news.
> >=20
> > n3220 =C2=A76.7.4.2 examples 5 through 7 demonstrate that the C
> > committee has
> > thought through the points you=E2=80=99re making. (These examples were =
not
> > present
> > in C11.) This may help to explain why the standard specifies strtol
> > with
> > =E2=80=98restrict=E2=80=99 on both arguments.
> >=20
>=20


