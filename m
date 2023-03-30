Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2EBB6D0F67
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 21:54:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231814AbjC3TyB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 15:54:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231693AbjC3Txz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 15:53:55 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DF51F76B
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 12:53:46 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-17ebba88c60so20971849fac.3
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 12:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680206024;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QOb9c5b5XWIQM+BgjiE73L/4TrZb/0TmIjFrClpo19U=;
        b=b+NBPawoFv1i7Wa0FmR/DOoJZyAjPo0nPxxgAY1J4HeKSNfD1UeZUq5cczYdQMI6wh
         D2yI4fbgMJlIsIBM4Z8lEqGNlYwsANWIfRr6pV/auWhsLwxtLjdSbZFF3mkJ+YiSYo/A
         rrMnzfe1yL6eg6f8SSbVCsW786S7vMg/q4d/9KGyOO819m6EG1N4EMdscIV9K9koCWRB
         noFg61P6BQmYrcC5BFLNng7YUmI76WAKXj1NzWw+6kila1QzQrrXFQSyBv5Sho5emNNN
         p/snbSpsI8oDt3TwTznWMXmhyDvee+N6E/dujtQQ26rvQiTD25LckCNsWVlYec/By1+7
         RzAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680206024;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QOb9c5b5XWIQM+BgjiE73L/4TrZb/0TmIjFrClpo19U=;
        b=TN8qe9SkMiJGzS92LBOVPf9AW1IrjU7JqDFzhzBIxGOE34b+FWJcSvZyXBCxrlCfxZ
         HZjYOFEK/2u04xt7Kw40jrwd4D5IVHNYtTDSweY2iC1j4gvTdlbwkqpDGY9mdFqQHySN
         RMv1YqFX/9e/HLIid2dGJx/367DN+t3qsLtDn0Z2TflvBO52J9+3vlnxR+1FGCrQsn9H
         tP2WZ5LBPiYTo5H1V8LWnUtff5D1+ZJ+0YhLAQau6b07986Vd3qjUMvhYr+yW02D+yS+
         3l6zRKmwHbBw9KCtgaJlFlPuTvnMgKiaGhfCk3njyzbC+C6u7f5t69XE/hmUf7zAxvs6
         Le4Q==
X-Gm-Message-State: AO0yUKXFBBx2TgiHzXQQ+zYdF7NjhAq45tnw7FH4uXKKETFAVHePuOO6
        yX/6ufLG5/D44XXURQ64z16WnMbxYOqS86ScITg=
X-Google-Smtp-Source: AKy350aEOrupUEt/t5+cFJu5ghOxKjDzBflliCTSHsbz0V9My/zMBc2AkdWNVK/znTbPZqmavT0UNC/WlcBPpFOL3Hg=
X-Received: by 2002:a05:6871:8f11:b0:17e:5bc4:9ac9 with SMTP id
 zz17-20020a0568718f1100b0017e5bc49ac9mr7950715oab.10.1680206024232; Thu, 30
 Mar 2023 12:53:44 -0700 (PDT)
MIME-Version: 1.0
References: <ac7432905ef55accc85429aa9151ae03@austingroupbugs.net>
 <2ebdbde1-59d0-fc1f-672e-e53ea7a46dc2@gmail.com> <wcngtdfihl45ktk4tddapa3axvh5h236qteibxdnnq2dremvgy@k4hcmtvrrc2j>
In-Reply-To: <wcngtdfihl45ktk4tddapa3axvh5h236qteibxdnnq2dremvgy@k4hcmtvrrc2j>
From:   roucaries bastien <roucaries.bastien+debian@gmail.com>
Date:   Thu, 30 Mar 2023 19:53:17 +0000
Message-ID: <CAE2SPAbSqpwvjkgS+h0=6X0B29S8BT-fKy7EoV0hn6HszsaHWw@mail.gmail.com>
Subject: Re: [1003.1(2016/18)/Issue7+TC2 0001641]: sockaddr_storage is not
 alias safe
To:     eblake <eblake@redhat.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        =?UTF-8?Q?Bastien_Roucari=C3=A8s?= <rouca@debian.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Le jeu. 30 mars 2023 =C3=A0 18:36, eblake <eblake@redhat.com> a =C3=A9crit =
:
>
> On Thu, Mar 30, 2023 at 06:25:30PM +0200, Alejandro Colomar wrote:
> > Hi Eric!
> >
> > On 3/30/23 17:22, Austin Group Bug Tracker via austin-group-l at The Op=
en Group wrote:
> > >
> > > The following issue has been RESOLVED.
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > https://austingroupbugs.net/view.php?id=3D1641
> ...
> >
> > Thanks for taking care of this bug!
>
> My pleasure.
>
> >
> >
> > On 3/30/23 17:20, Austin Group Bug Tracker via austin-group-l at The Op=
en Group wrote:
> > > On page 386 line 13115 section <sys/socket.h> DESCRIPTION, change:
> > >
> > >     When a pointer to a sockaddr_storage structure is cast as a point=
er to a sockaddr structure, the ss_family field of the sockaddr_storage str=
ucture shall map onto the sa_family field of the sockaddr structure. When a=
 pointer to a sockaddr_storage structure is cast as a pointer to a protocol=
-specific address structure, the ss_family field shall map onto a field of =
that structure that is of type sa_family_t and that identifies the protocol=
=E2=80=99s address family.
> > >
> > > to:
> > >
> > >     When a pointer to a sockaddr_storage structure is cast as a point=
er to a sockaddr structure, or vice versa, the ss_family field of the socka=
ddr_storage structure shall map onto the sa_family field of the sockaddr st=
ructure. When a pointer to a sockaddr_storage structure is cast as a pointe=
r to a protocol-specific address structure, or vice versa, the ss_family fi=
eld shall map onto a field of that structure that is of type sa_family_t an=
d that identifies the protocol=E2=80=99s address family. When a pointer to =
a sockaddr structure is cast as a pointer to a protocol-specific address st=
ructure, or vice versa, the sa_family field shall map onto a field of that =
structure that is of type sa_family_t and that identifies the protocol=E2=
=80=99s address family. Additionally, the structures shall be defined in su=
ch a way that these casts do not cause the compiler to produce diagnostics =
about aliasing issues when compiling conforming application (xref to XBD se=
ction 2.2) source files.
> >
> > I will add a CAVEATS section in sockaddr(3type) covering this, and will
> > CC you just to check.
>
> Sure, I'll be happy to review.

We should at least document may be in history or bug section what some
implementation may be non conformant.
>
> The intent from the meeting (and perhaps requires a bit of reading
> between the lines compared to what was captured as the approved text)
> was that implementations MUST ensure that existing code does not get
> miscompiled under the guise of undefined behavior, but without stating
> how to do it other than suggesting that implementation-specific
> extensions may be needed (somewhat similar as how POSIX requires that
> when dlsym() returns a void* for a function entry point, converting
> that pointer to a function pointer that can then be called MUST be
> compiled to work as intended, even though C doesn't define it).  We
> want the burden to be on the libc and system header providers to
> guarantee defined behavior, and not on the average coder to make
> careful use of memcpy() between storage of different effective types
> to avoid what might be otherwise undefined if it were written using
> types declared using only C99 syntax.

Perfectly agreed.
>
> Whether gcc already has all the attributes you need is not my area of
> expertise.  In my skim of the glibc list conversation, I saw mention
> of attribute [[gnu:transparent_union]] rather than [[__may_alias__]] -
> if that's a better implementation-defined extension that does what we
> need, then use it.  The standard developers were a bit uncomfortable
> directly putting [[gnu:transparent_union]] in the standard, but
> [[__may_alias__]] was noncontroversial (it's in the namespace reserved
> for the implementation) and deemed to be a sufficient hint for
> developers to figure out that they can use whatever works best to meet
> the actual requirement of not letting the compiler optimize away
> socket operations under the premise of undefined behavior.

Could you add something like this to
https://sourceware.org/bugzilla/show_bug.cgi?id=3D30293 or may I cite
you ?

> > >
> > > On page 390 line 13260 section <sys/socket.h> APPLICATION USAGE, appe=
nd a sentence:
> > >
> > >     Note that this example only deals with size and alignment; see RA=
TIONALE for additional issues related to these structures.
> > >
> > >
> > >
> > > On page 390 line 13291 section <sys/socket.h>, change RATIONALE from =
"None" to:
> > >
> > >     Note that defining the sockaddr_storage and sockaddr structures u=
sing only mechanisms defined in editions of the ISO C standard prior to the=
 2011 edition (C11) may produce aliasing diagnostics when used in C11 and l=
ater editions of the ISO C standard. Because of the large body of existing =
code utilizing sockets in a way that was well-defined in the 1999 edition o=
f the ISO C standard (C99) but could trigger undefined behavior if C11/C17 =
aliasing detection were enforced, this standard mandates that casts between=
 pointers to the various socket address structures do not produce aliasing =
diagnostics, so as to preserve well-defined semantics. An implementation's =
header files may need to use anonymous unions, or even an implementation-sp=
ecific extension such as a <tt>[[__may_alias__]]</tt> attribute, to comply =
with the requirements of this standard.
> >
> >
> > I'm not sure how aliasing rules changed from C99 to C11.  Wasn't
> > aliasing already in C99 (and also in C89)?  I believe this was
> > covered by 6.5.7, which is the same in both C99 and C11.
> >
> > <https://port70.net/~nsz/c/c11/n1570.html#6.5p7>
> > <https://port70.net/~nsz/c/c99/n1256.html#6.5p7>
>
> I'm also not sure about where the requirements started making things
> undefined behavior.  I do recall Nick Stoughton mentioning that he
> seems to remember 'restrict' behavior changing between C99 and C11, so
> maybe that's why he assumed that C99 permits the behavior without
> undefined behvaior; but reading
> https://port70.net/~nsz/c/c11/n1570.html#Foreword I don't see anything
> along those lines in C11 that wasn't in C99.  It does mention that
> anonymous unions are new to C11; the Austin Group was unsure whether
> anonymous unions are sufficent to solve the problem on their own
> (without also causing namespace pollution issues), or if an
> implementation-defined extension is needed.  And maybe compilers got
> better at alias detection because of the introduction of anonymous
> unions.
>
> At any rate, since you did demonstrate that the C11 and C99 wording is
> essentially the same, I'm happy to forward any alternative wording
> corrections you propose, and I can bring the topic back up in next
> week's meeting (if we decide that C99 indeed has undefined behavior,
> rather than our assumption that it wasn't undefined until C11, we may
> need to issue an interpretation against Issue 7, rather than just
> tweaking the wording for Issue 8 when we swap over to C17 as the
> mandated baseline).
>
> And since both C99 and C11 state that accessing the stored value of an
> object is permissible through
>
> "a type compatible with the effective type of the object,"
>
> it seems like the obvious action in glibc is to do whatever it takes
> to convince the compiler that struct sockaddr, struct
> sockaddr_storage, and all of the individual sockaddr_XX protocol types
> are marked with whatever magic that lets the compiler know that they
> are compatible types (not necessarily according to the C rules of
> compatible types, but according to the rules of the extension
> attribute).  I don't know if glibc can do it in isolation, or if gcc
> will need to invent yet another compiler attribute for glibc's use.

Do not forget clang...
> --
> Eric Blake, Principal Software Engineer
> Red Hat, Inc.           +1-919-301-3266
> Virtualization:  qemu.org | libvirt.org
>
