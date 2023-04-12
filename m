Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10BA56DF9B7
	for <lists+linux-man@lfdr.de>; Wed, 12 Apr 2023 17:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbjDLPUQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 11:20:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230148AbjDLPUJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 11:20:09 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C1497EF2
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 08:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681312750;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=PPxgZp8DSYMWOVYhvW2uP6B61vjscrr1T7O57KSkyLI=;
        b=K+Oh8pZSatQu0l4OJSrZ+z7WudcSIyVZllir7AzmzFrIv3q5X9td6bfhjA4MFz+JU7QlI+
        Q7AVK3CjCXSbGXRXl34GvaThj2B2X7qdmur+Qe3zJrBb3D7kLJtPBErcWOzy+lSBECPuKo
        71rENfPiF3ua/BtHU1qBppPG3plNg0k=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-663-H65X7H4hMva8Dco8ppUqKA-1; Wed, 12 Apr 2023 11:19:09 -0400
X-MC-Unique: H65X7H4hMva8Dco8ppUqKA-1
Received: by mail-ej1-f72.google.com with SMTP id tj6-20020a170907c24600b0093d7f81fd04so4256686ejc.19
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 08:19:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681312747; x=1683904747;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PPxgZp8DSYMWOVYhvW2uP6B61vjscrr1T7O57KSkyLI=;
        b=E9Yq+JxirjwQKkP4Uq4Zwj5W9vrfMA8K6Unuu8epyEt4IH9ZsQJpGPqmAMhee8VNiT
         nncbfhed8rYDQQ7oO5GDEEoYjopCgoFy2NGvCOQ0Frkn6GuAOAugEluqca+kgy6euqf4
         BkR/pHd9ckCWyXyQFSMhJWmhtCY5wfOVm/TBXChdeA9O7D86GnBlnY5YKpoLvHZOYPoR
         3t5WtWOvfD+DWhi8fzidqFnLpNh3wPvQXjp6kT7z2Y2ukvyx8vNXhCMPkXxug3ijkN7R
         K703hOqI51xIXk3byt++PQhWV6se2eX/uhyZ/OH7Ld8XkyzZ1bEqZrV3pWeQPgDRm06n
         f1cg==
X-Gm-Message-State: AAQBX9dXRlWsae6jJbfecf7CiWDmwotRtj/IxVf4ofP+TBaF/Hc76dTE
        iFBHUMXtEdOFEd24W6iusL/omD6W7G9QmVggan701dFJZuQpuDsIHFk7/xfjDIfVQKtzFYz5xPS
        D+aTO3OyW9/UFMw5flRl4vPLrqvnMz+ucCIHrN8FEtbpZAZLQcA==
X-Received: by 2002:a17:907:c60b:b0:94a:6cae:701f with SMTP id ud11-20020a170907c60b00b0094a6cae701fmr5390102ejc.8.1681312747409;
        Wed, 12 Apr 2023 08:19:07 -0700 (PDT)
X-Google-Smtp-Source: AKy350YVqb4YiG9FZ7NmhE7IdlFHZAUbrjb9DjKry/453fzSH+1Q+t70K090T/AL5dXLGMdrRnR/7tgiCHXGu7c76o0=
X-Received: by 2002:a17:907:c60b:b0:94a:6cae:701f with SMTP id
 ud11-20020a170907c60b00b0094a6cae701fmr5390091ejc.8.1681312747013; Wed, 12
 Apr 2023 08:19:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>
 <b4bedbd6-3e5d-f8a1-f099-20dc83037fe4@gmail.com> <CAK719L3jfBFrGKzE1i5OWKNWz4TD0i4MNOiSnM7QsY6wzKirGQ@mail.gmail.com>
 <46158b4c-b27c-726f-d594-a35fd606d8d8@gmail.com> <CAK719L2D9efKFXoa5Mb4UoXHJGZt+YMisePcGsbN6igO57mp6g@mail.gmail.com>
In-Reply-To: <CAK719L2D9efKFXoa5Mb4UoXHJGZt+YMisePcGsbN6igO57mp6g@mail.gmail.com>
From:   Lukas Javorsky <ljavorsk@redhat.com>
Date:   Wed, 12 Apr 2023 17:18:31 +0200
Message-ID: <CAK719L2i08PEfeYLZBYS6HmmyC9hZ=r31gW6DEKWt5t41MVX3g@mail.gmail.com>
Subject: Re: [PATCH] resolv.conf.5: Add option no-aaaa to the resolv.conf
 manual page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Sorry, attaching it as plain text again so it doesn't break the formatting

---
 man5/resolv.conf.5 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
index 6af8b4e92..7e207b0f4 100644
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


On Wed, Apr 12, 2023 at 5:17=E2=80=AFPM Lukas Javorsky <ljavorsk@redhat.com=
> wrote:
>
> I've recreated it and tried the git apply which worked just fine, hopeful=
ly, it works for you as well.
> I had some issues there, which probably caused the corrupt error.
>
> ---
>  man5/resolv.conf.5 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> index 6af8b4e92..7e207b0f4 100644
> --- a/man5/resolv.conf.5
> +++ b/man5/resolv.conf.5
> @@ -200,6 +200,29 @@ which causes round-robin selection of name servers f=
rom among those listed.
>  This has the effect of spreading the query load among all listed servers=
,
>  rather than having all clients try the first listed server first every t=
ime.
>  .TP
> +.B no\-aaaa (since glibc 2.36)
> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
> +Sets
> +.B RES_NOAAAA
> +in
> +.IR _res.options ,
> +which suppresses AAAA queries made by the stub resolver,
> +including AAAA lookups triggered by NSS-based interfaces such as
> +.BR getaddrinfo (3).
> +Only DNS lookups are affected: IPv6 data in
> +.BR hosts (5)
> +is still used,
> +.BR getaddrinfo (3)
> +with
> +.B AI_PASSIVE
> +will stillproduce IPv6 addresses,
> +and configured IPv6 name servers are still used.
> +To produce correct Name Error (NXDOMAIN) results,
> +AAAA queries are translated to A queries.
> +This option is intended preliminary for diagnostic purposes,
> +to rule out that AAAA DNS queries have adverse impact.
> +It is incompatible with EDNS0 usage and DNSSEC validation by application=
s.
> +.TP
>  .B no\-check\-names
>  .\" since glibc 2.2
>  Sets
> --
> 2.39.2
>
> On Tue, Apr 11, 2023 at 7:26=E2=80=AFPM Alejandro Colomar <alx.manpages@g=
mail.com> wrote:
>>
>> Hi Lukas,
>>
>> On 4/11/23 10:43, Lukas Javorsky wrote:
>> > I fixed the issues you pointed out, thank you for that.
>>
>> $ git apply patches/Re\:\ \[PATCH\]\ resolv.conf.5\:\ Add\ option\ no-aa=
aa\ to\ the\ resolv.conf\ manual\ page\ -\ Lukas\ Javorsky\ \<ljavorsk@redh=
at.com\>\ -\ 2023-04-11\ 1043.eml
>> error: corrupt patch at line 118
>>
>> After manually fixing that in the patch (which was due to your mailer
>> inserting line breaks), it fails with:
>>
>> $ git apply patches/Re\:\ \[PATCH\]\ resolv.conf.5\:\ Add\ option\ no-aa=
aa\ to\ the\ resolv.conf\ manual\ page\ -\ Lukas\ Javorsky\ \<ljavorsk@redh=
at.com\>\ -\ 2023-04-11\ 1043.eml
>> error: patch failed: man5/resolv.conf.5:200
>> error: man5/resolv.conf.5: patch does not apply
>>
>> I'm not sure what's the reason for this; maybe some strange character;
>> I can't see problems by visual inspection.  Can you resend including
>> a copy attached so that the mailer can't break it?
>>
>> Thanks,
>> Alex
>>
>> >
>> > ---
>> >  man5/resolv.conf.5 | 23 +++++++++++++++++++++++
>> >  1 file changed, 23 insertions(+)
>> >
>> > diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>> > index 6af8b4e92..2dd051556 100644
>> > --- a/man5/resolv.conf.5
>> > +++ b/man5/resolv.conf.5
>> > @@ -200,6 +200,29 @@ which causes round-robin selection of name
>> > servers from among those listed.
>> >  This has the effect of spreading the query load among all listed serv=
ers,
>> >  rather than having all clients try the first listed server first ever=
y time.
>> >  .TP
>> > +.B no\-aaaa (since glibc 2.36)
>> > +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
>> > +Sets
>> > +.B RES_NOAAAA
>> > +in
>> > +.IR _res.options ,
>> > +which suppresses AAAA queries made by the stub resolver,
>> > +including AAAA lookups triggered by NSS-based interfaces such as
>> > +.BR getaddrinfo (3).
>> > +Only DNS lookups are affected: IPv6 data in
>> > +.BR hosts (5)
>> > +is still used,
>> > +.BR getaddrinfo (3)
>> > +with
>> > +.B AI_PASSIVE
>> > +will stillproduce IPv6 addresses,
>> > +and configured IPv6 name servers are still used.
>> > +To produce correct Name Error (NXDOMAIN) results,
>> > +AAAA queries are translated to A queries.
>> > +This option is intended preliminary for diagnostic purposes,
>> > +to rule out that AAAA DNS queries have adverse impact.
>> > +It is incompatible with EDNS0 usage and DNSSEC validation by applicat=
ions.
>> > +.TP
>> >  .B no\-check\-names
>> >  .\" since glibc 2.2
>> >  Sets
>> > --
>> > 2.39.2
>> >
>> > If you see anything else, please let me know.
>> >
>> >
>> > On Sat, Apr 8, 2023 at 3:22=E2=80=AFPM Alejandro Colomar <alx.manpages=
@gmail.com> wrote:
>> >>
>> >> Hi Lukas,
>> >>
>> >> On 4/6/23 15:11, Lukas Javorsky wrote:
>> >>> Reference: https://sourceware.org/pipermail/libc-alpha/2022-June/139=
549.html
>> >>
>> >> Thanks for the patch.  Please see a few comments below.
>> >>
>> >> BTW, your mailer screws the patch; please send a copy attached togeth=
er
>> >> with the inline patch in the email, so I can respond to the inline on=
e
>> >> but apply the attached one.
>> >>
>> >> Cheers,
>> >> Alex
>> >>
>> >>> ---
>> >>>  man5/resolv.conf.5 | 21 +++++++++++++++++++++
>> >>>  1 file changed, 21 insertions(+)
>> >>>
>> >>> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>> >>> index 6af8b4e92..2dd051556 100644
>> >>> --- a/man5/resolv.conf.5
>> >>> +++ b/man5/resolv.conf.5
>> >>> @@ -200,6 +200,27 @@ which causes round-robin selection of name serv=
ers
>> >>> from among those listed.
>> >>>  This has the effect of spreading the query load among all listed se=
rvers,
>> >>>  rather than having all clients try the first listed server first ev=
ery
>> >>> time.
>> >>>  .TP
>> >>> +.B no\-aaaa (since glibc 2.36)
>> >>> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
>> >>> +Sets
>> >>> +.BR RES_NOAAAA
>> >>
>> >> This adds a warning:
>> >>
>> >> an.tmac:man5/resolv.conf.5:206: style: .BR expects at least 2 argumen=
ts, got 1
>> >>
>> >> You should use '.B', not '.BR'.
>> >>
>> >> Please check this for preventing new warnings:
>> >> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CON=
TRIBUTING#n132>
>> >>
>> >> (Although I'm not sure if this warning is only enabled in a version
>> >> of groff(1) that you probably don't have.  :)
>> >>
>> >>> +in
>> >>> +.IR _res.options ,
>> >>> +which suppresses AAAA queries made by the stub
>> >>
>> >> Please use semantic newlines.  See man-pages(7):
>> >>
>> >>    Use semantic newlines
>> >>        In the source of a manual page, new sentences should be starte=
d
>> >>        on  new  lines,  long  sentences  should be split into lines a=
t
>> >>        clause breaks (commas, semicolons, colons, and so on), and lon=
g
>> >>        clauses should be split at phrase boundaries.  This convention=
,
>> >>        sometimes known as "semantic newlines", makes it easier to  se=
e
>> >>        the  effect of patches, which often operate at the level of in=
=E2=80=90
>> >>        dividual sentences, clauses, or phrases.
>> >>
>> >>
>> >>> +resolver, including AAAA lookups triggered by NSS-based interfaces
>> >>> +such as
>> >>> +.BR getaddrinfo (3).
>> >>> +Only DNS lookups are affected: IPv6 data in
>> >>> +.BR hosts (5)
>> >>> +is still used,
>> >>> +.BR getaddrinfo (3)
>> >>> +with AI_PASSIVE will still
>> >>
>> >> .B AI_PASSIVE
>> >>
>> >> (I see it's not formatted in other locations in this file; that seems
>> >> a bug.)
>> >>
>> >>> +produce IPv6 addresses, and configured IPv6 name servers are still
>> >>> +used. To produce correct Name Error (NXDOMAIN) results, AAAA querie=
s
>> >>> +are translated to A queries. This option is intended preliminary
>> >>> +for diagnostic purposes, to rule out that AAAA DNS queries have adv=
erse
>> >>> impact.
>> >>> +It is incompatible with EDNS0 usage and DNSSEC validation by applic=
ations.
>> >>> +.TP
>> >>>  .B no\-check\-names
>> >>>  .\" since glibc 2.2
>> >>>  Sets
>> >>> --
>> >>> 2.39.2
>> >>>
>> >>
>> >> --
>> >> <http://www.alejandro-colomar.es/>
>> >> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>> >
>> >
>> >
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>
>
>
> --
> S pozdravom/ Best regards
>
> Luk=C3=A1=C5=A1 Javorsk=C3=BD
>
> Software Engineer, Core service - Databases
>
> Red Hat
>
> Purky=C5=88ova 115 (TPB-C)
>
> 612 00 Brno - Kr=C3=A1lovo Pole
>
> ljavorsk@redhat.com
>
>


--=20
S pozdravom/ Best regards

Luk=C3=A1=C5=A1 Javorsk=C3=BD

Software Engineer, Core service - Databases

Red Hat

Purky=C5=88ova 115 (TPB-C)

612 00 Brno - Kr=C3=A1lovo Pole

ljavorsk@redhat.com

