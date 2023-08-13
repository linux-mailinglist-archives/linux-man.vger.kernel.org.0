Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D39777A700
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 16:39:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230281AbjHMOjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 10:39:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229925AbjHMOjH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 10:39:07 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD5F5E65
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 07:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1691937505;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Tuom66zOxGBss7vboC3d/5PykCvUSZHwRD8t+g2G5GA=;
        b=KJkKTUkx5zppSmW0JSULx6LGb7JjL3FRsL/Nca9RRBqHDObOno5ktplWgy27mLVYvgh0/V
        p7YKTwgKkz2wO4PFuEUj4OA5DHHOWj67TvRoHWuZLrY1n+oNUpHb3F4eH3HLgza64O+ROL
        IvBp/xYEFObYrgYw/avlhhQPYujMCN8=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-443-ocCtUCHSMAKHnIiRUcC7Pw-1; Sun, 13 Aug 2023 10:38:23 -0400
X-MC-Unique: ocCtUCHSMAKHnIiRUcC7Pw-1
Received: by mail-lj1-f199.google.com with SMTP id 38308e7fff4ca-2ba37b5519fso34913371fa.2
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 07:38:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691937502; x=1692542302;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tuom66zOxGBss7vboC3d/5PykCvUSZHwRD8t+g2G5GA=;
        b=eXQDVdJiDHT3i/FDdsX18hdOcBy12yjbpcW32jzupdtncOjwCw0G2eHKwO8v6ualUc
         Pwp1hDQ9gYXULnRVfs7Zcj5Pg8bwdhd48uxhhaHWUlQq8qshOs+q/D2BwQn2E+OuXxPs
         hNQ2bNFfgNfyM4WNBIyoavxR55Pg0BHXv8I6EHirffgageGBTHkhWNu64OTyULaecT9n
         x0/WAUKajVAjF61Gmll2y1vopi3/1MY8A6yQiLiIXoB7O2kWZTHxBa7Dt8J0BOsgCBsW
         UeaypSjjs1G+GqsLEMS9w+u7Mr3iV8YNG99Rc9uNchtbnfxGD1L7MbOi8JIvVPUsiLbO
         SmQQ==
X-Gm-Message-State: AOJu0Yy77pnMHtlTVb7htvzxyB93E0j7+WGBZvCY9meWsqzuNgKhEuzk
        fONu0lpYY5wvW0avej9xO0WkHWLRn5xGb4m8zeGzo5KdyJqyoTRJps1yAYxG42/fx3YBWqpONxo
        jJErPMBVsUhz0xa3e78DVMZHS9tOPA4ayUmsa
X-Received: by 2002:a2e:7317:0:b0:2b7:764:3caf with SMTP id o23-20020a2e7317000000b002b707643cafmr4907731ljc.10.1691937502319;
        Sun, 13 Aug 2023 07:38:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHN8wykCRWa6K2iEkj+pRRleN7mZvyChcCftU1qdkPZuglt/ojQLpNO+xZIzbndcQpz4EEGoaO1+g2L1wXwDBE=
X-Received: by 2002:a2e:7317:0:b0:2b7:764:3caf with SMTP id
 o23-20020a2e7317000000b002b707643cafmr4907724ljc.10.1691937501991; Sun, 13
 Aug 2023 07:38:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com> <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
 <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org> <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
 <92db3ed7-b3ed-6508-ff3f-aa0abef764ed@kernel.org>
In-Reply-To: <92db3ed7-b3ed-6508-ff3f-aa0abef764ed@kernel.org>
From:   Shani Leviim <sleviim@redhat.com>
Date:   Sun, 13 Aug 2023 17:37:44 +0300
Message-ID: <CAMO6KYo7+y1a4WY5R2pQ+y4Y2k+wCbGLYwU7cih_mDHOT=HFnw@mail.gmail.com>
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to MT-Safe
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
        automotive-devel@redhat.com, "Carlos O'Donell" <carlos@redhat.com>,
        Gobinda Das <godas@redhat.com>
Content-Type: multipart/mixed; boundary="000000000000ca07880602cee58a"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000ca07880602cee58a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,
I am re-attaching it.
I changed its name once it was created, so it may have caused an issue.

git apply --verbose
0001-strerror.3-Change-strerror-reference-from-MT-Unsafe-.patch
Checking patch man3/strerror.3...
Applied patch man3/strerror.3 cleanly.

Sorry for the inconvenience


Regards,
Shani Leviim

On Sat, Aug 12, 2023 at 1:52=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Shani,
>
> On 2023-07-30 15:41, Shani Leviim wrote:
> > Thanks, Alex,
> > Attaching the patch (see attachments)
> >
> > From: Shani Leviim <sleviim@redhat.com>
> > Date: Sun, 30 Jul 2023 15:51:07 +0300
> > Subject: [PATCH 1/1] strerror.3: Change strerror() reference from MT-Un=
safe to
> >  MT-Safe
> >
> > The information in this patch was obtained from a glibc upstream patch,
> > commit ID 28aff047818eb1726394296d27b9c7885340bead
> >
> > According the patch above, for glibc versions >=3D2.32,
> > strerror() is considered MT-Safe, and the man page should be changed
> > accordingly.
> >
> > Signed-off-by: Shani Leviim <sleviim@redhat.com>
>
> The patch doesn't apply.  Can you please check what's wrong with it?
>
>
> $ git am patches/0001-strerror.3-Change-strerror-reference-from-MT-Unsafe=
-.patch
> Applying: strerror.3: Change strerror() reference from MT-Unsafe to MT-Sa=
fe
> error: patch failed: man3/strerror.3:238
> error: man3/strerror.3: patch does not apply
> Patch failed at 0001 strerror.3: Change strerror() reference from MT-Unsa=
fe to MT-Safe
> hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
>
>
> Thanks,
> Alex
>
> > ---
> >  man3/strerror.3 | 31 +++++++++++++++----------------
> >  1 file changed, 15 insertions(+), 16 deletions(-)
> >
> > diff --git a/man3/strerror.3 b/man3/strerror.3
> > index 862e153ee..6a3d83164 100644
> > --- a/man3/strerror.3
> > +++ b/man3/strerror.3
> > @@ -71,11 +71,12 @@ part of the current locale to select the
> > appropriate language.
> >  is
> >  .BR EINVAL ,
> >  the returned description will be "Invalid argument".)
> > -This string must not be modified by the application, but may be
> > -modified by a subsequent call to
> > +This string must not be modified by the application,
> > +and the returned pointer will be invalidated on a subsequent call to
> >  .BR strerror ()
> >  or
> > -.BR strerror_l ().
> > +.BR strerror_l (),
> > +or if the thread that obtained the string exits.
> >  No other library function, including
> >  .BR perror (3),
> >  will modify this string.
> > @@ -100,12 +101,12 @@ For example, given
> >  as an argument, this function returns a pointer to the string "EPERM".
> >  .\"
> >  .SS strerror_r()
> > -The
> >  .BR strerror_r ()
> > -function is similar to
> > +is like
> >  .BR strerror (),
> > -but is
> > -thread safe.
> > +but might use the supplied buffer
> > +.I buf
> > +instead of allocating one internally.
> >  This function is available in two versions:
> >  an XSI-compliant version specified in POSIX.1-2001
> >  (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.13=
),
> > @@ -238,7 +239,7 @@ Interface    Attribute    Value
> >  T{
> >  .BR strerror ()
> >  T}    Thread safety    T{
> > -MT-Unsafe race:strerror
> > +MT-Safe
> >  T}
> >  T{
> >  .BR strerrorname_np (),
> > @@ -249,6 +250,10 @@ T{
> >  .BR strerror_l ()
> >  T}    Thread safety    MT-Safe
> >  .TE
> > +.PP
> > +Before glibc 2.32,
> > +.BR strerror ()
> > +is not MT-Safe.
> >  .hy
> >  .ad
> >  .sp 1
> > @@ -292,13 +297,6 @@ to
> >  if the error number is unknown.
> >  C99 and POSIX.1-2008 require the return value to be non-NULL.
> >  .SH NOTES
> > -The GNU C Library uses a buffer of 1024 characters for
> > -.BR strerror ().
> > -This buffer size therefore should be sufficient to avoid an
> > -.B ERANGE
> > -error when calling
> > -.BR strerror_r ().
> > -.PP
> >  .BR strerrorname_np ()
> >  and
> >  .BR strerrordesc_np ()
> > @@ -309,4 +307,5 @@ are thread-safe and async-signal-safe.
> >  .BR error (3),
> >  .BR perror (3),
> >  .BR strsignal (3),
> > -.BR locale (7)
> > +.BR locale (7),
> > +.BR signal-safety (7)
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>

--000000000000ca07880602cee58a
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-strerror.3-Change-strerror-reference-from-MT-Unsafe-.patch"
Content-Disposition: attachment; 
	filename="0001-strerror.3-Change-strerror-reference-from-MT-Unsafe-.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ll9jse4u0>
X-Attachment-Id: f_ll9jse4u0

RnJvbSAzODc1MjJiYzM3ZDQ5MmJmYThhYTA5NGI5OWM2ZDVmMTEzMWUzYTRiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTaGFuaSBMZXZpaW0gPHNsZXZpaW1AcmVkaGF0LmNvbT4KRGF0
ZTogU3VuLCAzMCBKdWwgMjAyMyAxNTo1MTowNyArMDMwMApTdWJqZWN0OiBbUEFUQ0hdIHN0cmVy
cm9yLjM6IENoYW5nZSBzdHJlcnJvcigpIHJlZmVyZW5jZSBmcm9tIE1ULVVuc2FmZSB0bwogTVQt
U2FmZQoKVGhlIGluZm9ybWF0aW9uIGluIHRoaXMgcGF0Y2ggd2FzIG9idGFpbmVkIGZyb20gYSBn
bGliYyB1cHN0cmVhbSBwYXRjaCwKY29tbWl0IElEIDI4YWZmMDQ3ODE4ZWIxNzI2Mzk0Mjk2ZDI3
YjljNzg4NTM0MGJlYWQKCkFjY29yZGluZyB0aGUgcGF0Y2ggYWJvdmUsIGZvciBnbGliYyB2ZXJz
aW9ucyA+PTIuMzIsCnN0cmVycm9yKCkgaXMgY29uc2lkZXJlZCBNVC1TYWZlLCBhbmQgdGhlIG1h
biBwYWdlIHNob3VsZCBiZSBjaGFuZ2VkIGFjY29yZGluZ2x5LgoKU2lnbmVkLW9mZi1ieTogU2hh
bmkgTGV2aWltIDxzbGV2aWltQHJlZGhhdC5jb20+Ci0tLQogbWFuMy9zdHJlcnJvci4zIHwgMzEg
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21hbjMvc3RyZXJyb3IuMyBi
L21hbjMvc3RyZXJyb3IuMwppbmRleCA4NjJlMTUzZWUuLjZhM2Q4MzE2NCAxMDA2NDQKLS0tIGEv
bWFuMy9zdHJlcnJvci4zCisrKyBiL21hbjMvc3RyZXJyb3IuMwpAQCAtNzEsMTEgKzcxLDEyIEBA
IHBhcnQgb2YgdGhlIGN1cnJlbnQgbG9jYWxlIHRvIHNlbGVjdCB0aGUgYXBwcm9wcmlhdGUgbGFu
Z3VhZ2UuCiBpcwogLkJSIEVJTlZBTCAsCiB0aGUgcmV0dXJuZWQgZGVzY3JpcHRpb24gd2lsbCBi
ZSAiSW52YWxpZCBhcmd1bWVudCIuKQotVGhpcyBzdHJpbmcgbXVzdCBub3QgYmUgbW9kaWZpZWQg
YnkgdGhlIGFwcGxpY2F0aW9uLCBidXQgbWF5IGJlCi1tb2RpZmllZCBieSBhIHN1YnNlcXVlbnQg
Y2FsbCB0bworVGhpcyBzdHJpbmcgbXVzdCBub3QgYmUgbW9kaWZpZWQgYnkgdGhlIGFwcGxpY2F0
aW9uLAorYW5kIHRoZSByZXR1cm5lZCBwb2ludGVyIHdpbGwgYmUgaW52YWxpZGF0ZWQgb24gYSBz
dWJzZXF1ZW50IGNhbGwgdG8KIC5CUiBzdHJlcnJvciAoKQogb3IKLS5CUiBzdHJlcnJvcl9sICgp
LgorLkJSIHN0cmVycm9yX2wgKCksCitvciBpZiB0aGUgdGhyZWFkIHRoYXQgb2J0YWluZWQgdGhl
IHN0cmluZyBleGl0cy4KIE5vIG90aGVyIGxpYnJhcnkgZnVuY3Rpb24sIGluY2x1ZGluZwogLkJS
IHBlcnJvciAoMyksCiB3aWxsIG1vZGlmeSB0aGlzIHN0cmluZy4KQEAgLTEwMCwxMiArMTAxLDEy
IEBAIEZvciBleGFtcGxlLCBnaXZlbgogYXMgYW4gYXJndW1lbnQsIHRoaXMgZnVuY3Rpb24gcmV0
dXJucyBhIHBvaW50ZXIgdG8gdGhlIHN0cmluZyAiRVBFUk0iLgogLlwiCiAuU1Mgc3RyZXJyb3Jf
cigpCi1UaGUKIC5CUiBzdHJlcnJvcl9yICgpCi1mdW5jdGlvbiBpcyBzaW1pbGFyIHRvCitpcyBs
aWtlCiAuQlIgc3RyZXJyb3IgKCksCi1idXQgaXMKLXRocmVhZCBzYWZlLgorYnV0IG1pZ2h0IHVz
ZSB0aGUgc3VwcGxpZWQgYnVmZmVyCisuSSBidWYKK2luc3RlYWQgb2YgYWxsb2NhdGluZyBvbmUg
aW50ZXJuYWxseS4KIFRoaXMgZnVuY3Rpb24gaXMgYXZhaWxhYmxlIGluIHR3byB2ZXJzaW9uczoK
IGFuIFhTSS1jb21wbGlhbnQgdmVyc2lvbiBzcGVjaWZpZWQgaW4gUE9TSVguMS0yMDAxCiAoYXZh
aWxhYmxlIHNpbmNlIGdsaWJjIDIuMy40LCBidXQgbm90IFBPU0lYLWNvbXBsaWFudCB1bnRpbCBn
bGliYyAyLjEzKSwKQEAgLTIzOCw3ICsyMzksNyBAQCBJbnRlcmZhY2UJQXR0cmlidXRlCVZhbHVl
CiBUewogLkJSIHN0cmVycm9yICgpCiBUfQlUaHJlYWQgc2FmZXR5CVR7Ci1NVC1VbnNhZmUgcmFj
ZTpzdHJlcnJvcgorTVQtU2FmZQogVH0KIFR7CiAuQlIgc3RyZXJyb3JuYW1lX25wICgpLApAQCAt
MjQ5LDYgKzI1MCwxMCBAQCBUewogLkJSIHN0cmVycm9yX2wgKCkKIFR9CVRocmVhZCBzYWZldHkJ
TVQtU2FmZQogLlRFCisuUFAKK0JlZm9yZSBnbGliYyAyLjMyLAorLkJSIHN0cmVycm9yICgpCitp
cyBub3QgTVQtU2FmZS4KIC5oeQogLmFkCiAuc3AgMQpAQCAtMjkyLDEzICsyOTcsNiBAQCB0bwog
aWYgdGhlIGVycm9yIG51bWJlciBpcyB1bmtub3duLgogQzk5IGFuZCBQT1NJWC4xLTIwMDggcmVx
dWlyZSB0aGUgcmV0dXJuIHZhbHVlIHRvIGJlIG5vbi1OVUxMLgogLlNIIE5PVEVTCi1UaGUgR05V
IEMgTGlicmFyeSB1c2VzIGEgYnVmZmVyIG9mIDEwMjQgY2hhcmFjdGVycyBmb3IKLS5CUiBzdHJl
cnJvciAoKS4KLVRoaXMgYnVmZmVyIHNpemUgdGhlcmVmb3JlIHNob3VsZCBiZSBzdWZmaWNpZW50
IHRvIGF2b2lkIGFuCi0uQiBFUkFOR0UKLWVycm9yIHdoZW4gY2FsbGluZwotLkJSIHN0cmVycm9y
X3IgKCkuCi0uUFAKIC5CUiBzdHJlcnJvcm5hbWVfbnAgKCkKIGFuZAogLkJSIHN0cmVycm9yZGVz
Y19ucCAoKQpAQCAtMzA5LDQgKzMwNyw1IEBAIGFyZSB0aHJlYWQtc2FmZSBhbmQgYXN5bmMtc2ln
bmFsLXNhZmUuCiAuQlIgZXJyb3IgKDMpLAogLkJSIHBlcnJvciAoMyksCiAuQlIgc3Ryc2lnbmFs
ICgzKSwKLS5CUiBsb2NhbGUgKDcpCisuQlIgbG9jYWxlICg3KSwKKy5CUiBzaWduYWwtc2FmZXR5
ICg3KQotLSAKMi4zOS4zCgo=
--000000000000ca07880602cee58a--

