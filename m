Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C8156DD5D5
	for <lists+linux-man@lfdr.de>; Tue, 11 Apr 2023 10:45:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230144AbjDKIpY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Apr 2023 04:45:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjDKIpX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Apr 2023 04:45:23 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03713121
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 01:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681202677;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=tOQY3TdM0/AXalSUBVcOs2+vYBTwx8t/6T3Zh9N145I=;
        b=FwB+rpYPQFVc2B7vmUmCSHJtRS17ZRRoySwZnC95TS1R7bRwg4L1eJ6rmblJmO3qn4bH6w
        7TZoq6YLi7s8vYcfg9P1s6yMXP+eoFLeyuenMJMbN4P2rPyDLW6EXc1+BNU3M4dk/g71bi
        cZV2PpSr24rjJ4lLn5zhlb281ZkN7xg=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-475-t0vpDtHjM-mxaHF1JVPHFA-1; Tue, 11 Apr 2023 04:44:36 -0400
X-MC-Unique: t0vpDtHjM-mxaHF1JVPHFA-1
Received: by mail-ed1-f72.google.com with SMTP id 4fb4d7f45d1cf-50480ce89a2so1473821a12.3
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 01:44:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681202674; x=1683794674;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tOQY3TdM0/AXalSUBVcOs2+vYBTwx8t/6T3Zh9N145I=;
        b=WxxPdwlvEeQCMS2aTPnIJmJm7nWvGLTBMGgu9m8qtIfTE+QUJJ0pY3O1RG+SDfwvgM
         9yaHKFnmcjRzelzSdQZRjQWaq0Pv5sqwjuk4zk1xm4P+iHTA6POPuKuIaVRznHf6Z6l6
         1DtQdHYYtto9LpShok9bBE30GpuEZnDOBcKg0Au/WKjKkaSBW90a7OjbQN7iNkvIzwWe
         805nk9Jjy+XjxeOVqDHDwQCgIRk9C1ktXXTli3FmPVlO/ke/o8ZPKvrl2/o4zsdAa6M0
         PveC8f+Wk7EcTxUmsU51R9d17DEUMcr4etirgWb5HWbjrfYJUvvte0I7Q4pCEnvgR6y/
         06jw==
X-Gm-Message-State: AAQBX9fgKgZwBqwMe1OAvnxtkevhO2jckRj70UdERQLnisCha3756GKc
        ESwUP+5KpgbVCDkQZszurluUwPZF0ZDYe+Lyamu9Wxvl0NANon1hJXqQGe3W4HZtjsDjyHjFek1
        BbdWtknZXuOtgmmovnzd7eWTiBETIoceaAcFe
X-Received: by 2002:a50:931c:0:b0:4fa:e5e0:9466 with SMTP id m28-20020a50931c000000b004fae5e09466mr6244358eda.7.1681202674246;
        Tue, 11 Apr 2023 01:44:34 -0700 (PDT)
X-Google-Smtp-Source: AKy350YMSDBQQGG+KWKqWTSgbE/DY4/+7H7HkaTiElpPI9VQ495yOiDPZEcDVYEqVkzlDsSlwsBQP9hJFX1Raxq2E4c=
X-Received: by 2002:a50:931c:0:b0:4fa:e5e0:9466 with SMTP id
 m28-20020a50931c000000b004fae5e09466mr6244338eda.7.1681202673610; Tue, 11 Apr
 2023 01:44:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>
 <b4bedbd6-3e5d-f8a1-f099-20dc83037fe4@gmail.com>
In-Reply-To: <b4bedbd6-3e5d-f8a1-f099-20dc83037fe4@gmail.com>
From:   Lukas Javorsky <ljavorsk@redhat.com>
Date:   Tue, 11 Apr 2023 10:43:57 +0200
Message-ID: <CAK719L3jfBFrGKzE1i5OWKNWz4TD0i4MNOiSnM7QsY6wzKirGQ@mail.gmail.com>
Subject: Re: [PATCH] resolv.conf.5: Add option no-aaaa to the resolv.conf
 manual page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I fixed the issues you pointed out, thank you for that.

---
 man5/resolv.conf.5 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
index 6af8b4e92..2dd051556 100644
--- a/man5/resolv.conf.5
+++ b/man5/resolv.conf.5
@@ -200,6 +200,29 @@ which causes round-robin selection of name
servers from among those listed.
 This has the effect of spreading the query load among all listed servers,
 rather than having all clients try the first listed server first every tim=
e.
 .TP
+.B no\-aaaa (since glibc 2.36)
+.\" f282cdbe7f436c75864e5640a409a10485e9abb2
+Sets
+.B RES_NOAAAA
+in
+.IR _res.options ,
+which suppresses AAAA queries made by the stub resolver,
+including AAAA lookups triggered by NSS-based interfaces such as
+.BR getaddrinfo (3).
+Only DNS lookups are affected: IPv6 data in
+.BR hosts (5)
+is still used,
+.BR getaddrinfo (3)
+with
+.B AI_PASSIVE
+will stillproduce IPv6 addresses,
+and configured IPv6 name servers are still used.
+To produce correct Name Error (NXDOMAIN) results,
+AAAA queries are translated to A queries.
+This option is intended preliminary for diagnostic purposes,
+to rule out that AAAA DNS queries have adverse impact.
+It is incompatible with EDNS0 usage and DNSSEC validation by applications.
+.TP
 .B no\-check\-names
 .\" since glibc 2.2
 Sets
--
2.39.2

If you see anything else, please let me know.


On Sat, Apr 8, 2023 at 3:22=E2=80=AFPM Alejandro Colomar <alx.manpages@gmai=
l.com> wrote:
>
> Hi Lukas,
>
> On 4/6/23 15:11, Lukas Javorsky wrote:
> > Reference: https://sourceware.org/pipermail/libc-alpha/2022-June/139549=
.html
>
> Thanks for the patch.  Please see a few comments below.
>
> BTW, your mailer screws the patch; please send a copy attached together
> with the inline patch in the email, so I can respond to the inline one
> but apply the attached one.
>
> Cheers,
> Alex
>
> > ---
> >  man5/resolv.conf.5 | 21 +++++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> >
> > diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> > index 6af8b4e92..2dd051556 100644
> > --- a/man5/resolv.conf.5
> > +++ b/man5/resolv.conf.5
> > @@ -200,6 +200,27 @@ which causes round-robin selection of name servers
> > from among those listed.
> >  This has the effect of spreading the query load among all listed serve=
rs,
> >  rather than having all clients try the first listed server first every
> > time.
> >  .TP
> > +.B no\-aaaa (since glibc 2.36)
> > +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
> > +Sets
> > +.BR RES_NOAAAA
>
> This adds a warning:
>
> an.tmac:man5/resolv.conf.5:206: style: .BR expects at least 2 arguments, =
got 1
>
> You should use '.B', not '.BR'.
>
> Please check this for preventing new warnings:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING#n132>
>
> (Although I'm not sure if this warning is only enabled in a version
> of groff(1) that you probably don't have.  :)
>
> > +in
> > +.IR _res.options ,
> > +which suppresses AAAA queries made by the stub
>
> Please use semantic newlines.  See man-pages(7):
>
>    Use semantic newlines
>        In the source of a manual page, new sentences should be started
>        on  new  lines,  long  sentences  should be split into lines at
>        clause breaks (commas, semicolons, colons, and so on), and long
>        clauses should be split at phrase boundaries.  This convention,
>        sometimes known as "semantic newlines", makes it easier to  see
>        the  effect of patches, which often operate at the level of in=E2=
=80=90
>        dividual sentences, clauses, or phrases.
>
>
> > +resolver, including AAAA lookups triggered by NSS-based interfaces
> > +such as
> > +.BR getaddrinfo (3).
> > +Only DNS lookups are affected: IPv6 data in
> > +.BR hosts (5)
> > +is still used,
> > +.BR getaddrinfo (3)
> > +with AI_PASSIVE will still
>
> .B AI_PASSIVE
>
> (I see it's not formatted in other locations in this file; that seems
> a bug.)
>
> > +produce IPv6 addresses, and configured IPv6 name servers are still
> > +used. To produce correct Name Error (NXDOMAIN) results, AAAA queries
> > +are translated to A queries. This option is intended preliminary
> > +for diagnostic purposes, to rule out that AAAA DNS queries have advers=
e
> > impact.
> > +It is incompatible with EDNS0 usage and DNSSEC validation by applicati=
ons.
> > +.TP
> >  .B no\-check\-names
> >  .\" since glibc 2.2
> >  Sets
> > --
> > 2.39.2
> >
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5



--=20
S pozdravom/ Best regards

Luk=C3=A1=C5=A1 Javorsk=C3=BD

Software Engineer, Core service - Databases

Red Hat

Purky=C5=88ova 115 (TPB-C)

612 00 Brno - Kr=C3=A1lovo Pole

ljavorsk@redhat.com

