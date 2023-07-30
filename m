Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 004937685B0
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 15:42:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjG3Nmt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 09:42:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjG3Nms (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 09:42:48 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19DF21B8
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 06:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1690724517;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=yp8c7PGfwnO4I2kNF7yDHKJinFKnwvyAm6t6SPFi3vM=;
        b=WHr11O5hD7FuFl4M/ME18yjw2+SrMBIaNxj6Wyc3IN108rrFfzjfcp+oA8+75bstLSDUo8
        KaCBR5FRpCbdFLli5/DrUm8SeC9/JeZo/DDkQBxDp/HB2CYBNRo9Au9M/I0gbz0GPhpE9d
        GfQCVM0LFh4NkMpl0ZcQ37e1If7UdZ8=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-58-Zu6OMLFjOhS1CzYrYC0mDQ-1; Sun, 30 Jul 2023 09:41:55 -0400
X-MC-Unique: Zu6OMLFjOhS1CzYrYC0mDQ-1
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3a5ad0720d4so7885773b6e.3
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 06:41:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690724514; x=1691329314;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yp8c7PGfwnO4I2kNF7yDHKJinFKnwvyAm6t6SPFi3vM=;
        b=XPNrq67V84xzf4xjv2pA++1ep8eO7cP1TXzsMjonbm7WolVcayRuPw3gcx1GtippFq
         ZYWSJQ6yq69WEcEmUZ75NAgMcJWZBuBxl1sZAAsBqs9DbrxBNxo/kXNL33fKpmbzZeJa
         NDlmFqeUCeSQaM6fxshzndgIHrO+lF1czhlqHQNQR5Q70GbO7hkB4ZHbyNY7SyjQWzOF
         vDHNxJ+cFsQs9AxITcCdX4TujiQhn3fVHWmYJRUKeqH07y6fIIBGryjRRINbyNo/KNrL
         secr4sPsfhrJFKEOcy/uj0N0X2nFwaxSsU/hFlbtJQFqDxZddxZx8g+gkM60fivwCRSK
         oSCw==
X-Gm-Message-State: ABy/qLZPuEswmHgNX6q6lTxy7RPlQ7daLPqp5Mo8BhNujx5Y37FVUGAb
        p99tWeiLy+1Jy0T4AjQMO1M/EudgBokf9HEuA456SNyrfFEaVQkAqm3eZjSUgKF2LKljX48AnzO
        mEj5IwxDmDjRMkSagZCs7ndzLzYeQGb3kuj9L
X-Received: by 2002:a05:6808:1b0f:b0:3a4:735b:e559 with SMTP id bx15-20020a0568081b0f00b003a4735be559mr8148320oib.33.1690724514724;
        Sun, 30 Jul 2023 06:41:54 -0700 (PDT)
X-Google-Smtp-Source: APBJJlG21qrtVgBWVx6qiXItqPvJIqoWEn4pfysTU48R2Rp0uOnlcCoF0SUb2MmlNghPCgtG58uFAsfsCq8TjtOrTbg=
X-Received: by 2002:a05:6808:1b0f:b0:3a4:735b:e559 with SMTP id
 bx15-20020a0568081b0f00b003a4735be559mr8148309oib.33.1690724514469; Sun, 30
 Jul 2023 06:41:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com> <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com> <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
In-Reply-To: <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
From:   Shani Leviim <sleviim@redhat.com>
Date:   Sun, 30 Jul 2023 16:41:18 +0300
Message-ID: <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to MT-Safe
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
        automotive-devel@redhat.com, "Carlos O'Donell" <carlos@redhat.com>,
        Gobinda Das <godas@redhat.com>
Content-Type: multipart/mixed; boundary="0000000000001944d50601b47a80"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--0000000000001944d50601b47a80
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, Alex,
Attaching the patch (see attachments)

From: Shani Leviim <sleviim@redhat.com>
Date: Sun, 30 Jul 2023 15:51:07 +0300
Subject: [PATCH 1/1] strerror.3: Change strerror() reference from MT-Unsafe=
 to
 MT-Safe

The information in this patch was obtained from a glibc upstream patch,
commit ID 28aff047818eb1726394296d27b9c7885340bead

According the patch above, for glibc versions >=3D2.32,
strerror() is considered MT-Safe, and the man page should be changed
accordingly.

Signed-off-by: Shani Leviim <sleviim@redhat.com>
---
 man3/strerror.3 | 31 +++++++++++++++----------------
 1 file changed, 15 insertions(+), 16 deletions(-)

diff --git a/man3/strerror.3 b/man3/strerror.3
index 862e153ee..6a3d83164 100644
--- a/man3/strerror.3
+++ b/man3/strerror.3
@@ -71,11 +71,12 @@ part of the current locale to select the
appropriate language.
 is
 .BR EINVAL ,
 the returned description will be "Invalid argument".)
-This string must not be modified by the application, but may be
-modified by a subsequent call to
+This string must not be modified by the application,
+and the returned pointer will be invalidated on a subsequent call to
 .BR strerror ()
 or
-.BR strerror_l ().
+.BR strerror_l (),
+or if the thread that obtained the string exits.
 No other library function, including
 .BR perror (3),
 will modify this string.
@@ -100,12 +101,12 @@ For example, given
 as an argument, this function returns a pointer to the string "EPERM".
 .\"
 .SS strerror_r()
-The
 .BR strerror_r ()
-function is similar to
+is like
 .BR strerror (),
-but is
-thread safe.
+but might use the supplied buffer
+.I buf
+instead of allocating one internally.
 This function is available in two versions:
 an XSI-compliant version specified in POSIX.1-2001
 (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.13),
@@ -238,7 +239,7 @@ Interface    Attribute    Value
 T{
 .BR strerror ()
 T}    Thread safety    T{
-MT-Unsafe race:strerror
+MT-Safe
 T}
 T{
 .BR strerrorname_np (),
@@ -249,6 +250,10 @@ T{
 .BR strerror_l ()
 T}    Thread safety    MT-Safe
 .TE
+.PP
+Before glibc 2.32,
+.BR strerror ()
+is not MT-Safe.
 .hy
 .ad
 .sp 1
@@ -292,13 +297,6 @@ to
 if the error number is unknown.
 C99 and POSIX.1-2008 require the return value to be non-NULL.
 .SH NOTES
-The GNU C Library uses a buffer of 1024 characters for
-.BR strerror ().
-This buffer size therefore should be sufficient to avoid an
-.B ERANGE
-error when calling
-.BR strerror_r ().
-.PP
 .BR strerrorname_np ()
 and
 .BR strerrordesc_np ()
@@ -309,4 +307,5 @@ are thread-safe and async-signal-safe.
 .BR error (3),
 .BR perror (3),
 .BR strsignal (3),
-.BR locale (7)
+.BR locale (7),
+.BR signal-safety (7)
--=20
2.39.3


Regards,
Shani Leviim


On Fri, Jul 28, 2023 at 9:56=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Shani, Florian,
>
> On 2023-07-16 19:28, Shani Leviim wrote:
> > Hi all,
> > My previous patch wasn't aligned with the master branch.
> > Here's the updated patch (compared to master):
>
> Thanks for the patch.
>
> Florian, do you have any comments about this patch?
>
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
> > @@ -238,7 +239,7 @@ Interface   Attribute       Value
> >  T{
> >  .BR strerror ()
> >  T}     Thread safety   T{
> > -MT-Unsafe race:strerror
> > +MT-Safe
> >  T}
> >  T{
> >  .BR strerrorname_np (),
> > @@ -249,6 +250,10 @@ T{
> >  .BR strerror_l ()
> >  T}     Thread safety   MT-Safe
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
> >
> >
> > Signed-off-by: Shani Leviim <sleviim@redhat.com>
>
> Can you please include that information in the commit message itself?
> I suggest using git-format-patch(1) + git-send-email(1) to send the patch=
.
> If git-send-email(1) is not an option for you, then I suggest adding a
> copy of the patch as an attachment (but keep the inline copy please).
>
> Check the ./CONTRIBUTING file.
>
> Cheers,
> Alex
>
> >
> > Regards,
> > Shani Leviim
> >
> > On Thu, Jul 13, 2023 at 2:15=E2=80=AFPM Shani Leviim <sleviim@redhat.co=
m> wrote:
> >>
> >> Thanks, Florian, for reviewing,
> >> My original mail wasn't text plained, sorry for that.
> >>
> >> The information in my patch was obtained from a glibc upstream patch,
> >> commit ID 28aff047818eb1726394296d27b9c7885340bead
> >> Following the patch above, for glibc versions >=3D2.32, strerror() is
> >> considered MT-Safe, and the man page should be changed accordingly.
> >>
> >> diff --git a/man3/strerror.3 b/man3/strerror.3
> >> index 72b4d3994..31818e4ae 100644
> >> --- a/man3/strerror.3
> >> +++ b/man3/strerror.3
> >> @@ -91,11 +91,12 @@ part of the current locale to select the
> >> appropriate language.
> >>  is
> >>  .BR EINVAL ,
> >>  the returned description will be "Invalid argument".)
> >> -This string must not be modified by the application, but may be
> >> -modified by a subsequent call to
> >> +This string must not be modified by the application,
> >> +and the returned pointer will be invalidated on a subsequent call to
> >>  .BR strerror ()
> >>  or
> >> -.BR strerror_l ().
> >> +.BR strerror_l (),
> >> +or if the thread that obtained the string exits.
> >>  No other library function, including
> >>  .BR perror (3),
> >>  will modify this string.
> >> @@ -120,12 +121,12 @@ For example, given
> >>  as an argument, this function returns a pointer to the string "EPERM"=
.
> >>  .\"
> >>  .SS strerror_r()
> >> -The
> >>  .BR strerror_r ()
> >> -function is similar to
> >> +is like
> >>  .BR strerror (),
> >> -but is
> >> -thread safe.
> >> +but might use the supplied buffer
> >> +.I buf
> >> +instead of allocating one internally.
> >>  This function is available in two versions:
> >>  an XSI-compliant version specified in POSIX.1-2001
> >>  (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.1=
3),
> >> @@ -249,7 +250,7 @@ l l l.
> >>  Interface      Attribute       Value
> >>  T{
> >>  .BR strerror ()
> >> -T}     Thread safety   MT-Unsafe race:strerror
> >> +T}     Thread safety   MT-Safe
> >>  T{
> >>  .BR strerrorname_np (),
> >>  .BR strerrordesc_np ()
> >> @@ -260,6 +261,10 @@ T{
> >>  .BR strerror_l ()
> >>  T}     Thread safety   MT-Safe
> >>  .TE
> >> +.PP
> >> +Before glibc 2.32,
> >> +.BR strerror ()
> >> +is not MT-Safe.
> >>  .SH CONFORMING TO
> >>  .BR strerror ()
> >>  is specified by POSIX.1-2001, POSIX.1-2008, C89, and C99.
> >> @@ -300,13 +305,6 @@ to
> >>  if the error number is unknown.
> >>  C99 and POSIX.1-2008 require the return value to be non-NULL.
> >>  .SH NOTES
> >> -The GNU C Library uses a buffer of 1024 characters for
> >> -.BR strerror ().
> >> -This buffer size therefore should be sufficient to avoid an
> >> -.B ERANGE
> >> -error when calling
> >> -.BR strerror_r ().
> >> -.PP
> >>  .BR strerrorname_np ()
> >>  and
> >>  .BR strerrordesc_np ()
> >> @@ -317,4 +315,5 @@ are thread-safe and async-signal-safe.
> >>  .BR error (3),
> >>  .BR perror (3),
> >>  .BR strsignal (3),
> >> -.BR locale (7)
> >> +.BR locale (7),
> >> +.BR signal-safety (7)
> >>
> >> Signed-off-by: Shani Leviim <sleviim@redhat.com>
> >>
> >> Regards,
> >> Shani Leviim
> >>
> >> Regards,
> >> Shani Leviim
> >>
> >>
> >> On Thu, Jul 13, 2023 at 11:12=E2=80=AFAM Florian Weimer <fweimer@redha=
t.com> wrote:
> >>>
> >>> * Shani Leviim:
> >>>
> >>>> @@ -169,6 +172,16 @@ is too small and
> >>>>  is unknown).
> >>>>  The string always includes a terminating null byte (\(aq\e0\(aq).
> >>>>  .\"
> >>>> +.PP
> >>>> +The automatically generated buffer for
> >>>> +.BR strerror ()
> >>>> +and
> >>>> +.BR strerror_l ()
> >>>> +is sufficient to avoid an
> >>>> +.B ERANGE
> >>>> +error when calling
> >>>> +.BR strerror_r ().
> >>>> +.PP
> >>>
> >>> I think this gives the wrong impression that the pointer returned by
> >>> strerror/strerror_l can be used with strerror_r.  This is not the cas=
e
> >>> because the application does not own that buffer, or know its length.
> >>>
> >>> Thanks,
> >>> Florian
> >>>
> >
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>

--0000000000001944d50601b47a80
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-strerror.3-Change-strerror-reference-from-MT-Unsafe-.patch"
Content-Disposition: attachment; 
	filename="0001-strerror.3-Change-strerror-reference-from-MT-Unsafe-.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lkphli9w0>
X-Attachment-Id: f_lkphli9w0

RnJvbSAzODc1MjJiYzM3ZDQ5MmJmYThhYTA5NGI5OWM2ZDVmMTEzMWUzYTRiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTaGFuaSBMZXZpaW0gPHNsZXZpaW1AcmVkaGF0LmNvbT4KRGF0
ZTogU3VuLCAzMCBKdWwgMjAyMyAxNTo1MTowNyArMDMwMApTdWJqZWN0OiBbUEFUQ0ggMS8xXSBz
dHJlcnJvci4zOiBDaGFuZ2Ugc3RyZXJyb3IoKSByZWZlcmVuY2UgZnJvbSBNVC1VbnNhZmUgdG8K
IE1ULVNhZmUKClRoZSBpbmZvcm1hdGlvbiBpbiB0aGlzIHBhdGNoIHdhcyBvYnRhaW5lZCBmcm9t
IGEgZ2xpYmMgdXBzdHJlYW0gcGF0Y2gsCmNvbW1pdCBJRCAyOGFmZjA0NzgxOGViMTcyNjM5NDI5
NmQyN2I5Yzc4ODUzNDBiZWFkCgpBY2NvcmRpbmcgdGhlIHBhdGNoIGFib3ZlLCBmb3IgZ2xpYmMg
dmVyc2lvbnMgPj0yLjMyLApzdHJlcnJvcigpIGlzIGNvbnNpZGVyZWQgTVQtU2FmZSwgYW5kIHRo
ZSBtYW4gcGFnZSBzaG91bGQgYmUgY2hhbmdlZCBhY2NvcmRpbmdseS4KClNpZ25lZC1vZmYtYnk6
IFNoYW5pIExldmlpbSA8c2xldmlpbUByZWRoYXQuY29tPgotLS0KIG1hbjMvc3RyZXJyb3IuMyB8
IDMxICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tYW4zL3N0cmVycm9y
LjMgYi9tYW4zL3N0cmVycm9yLjMKaW5kZXggODYyZTE1M2VlLi42YTNkODMxNjQgMTAwNjQ0Ci0t
LSBhL21hbjMvc3RyZXJyb3IuMworKysgYi9tYW4zL3N0cmVycm9yLjMKQEAgLTcxLDExICs3MSwx
MiBAQCBwYXJ0IG9mIHRoZSBjdXJyZW50IGxvY2FsZSB0byBzZWxlY3QgdGhlIGFwcHJvcHJpYXRl
IGxhbmd1YWdlLgogaXMKIC5CUiBFSU5WQUwgLAogdGhlIHJldHVybmVkIGRlc2NyaXB0aW9uIHdp
bGwgYmUgIkludmFsaWQgYXJndW1lbnQiLikKLVRoaXMgc3RyaW5nIG11c3Qgbm90IGJlIG1vZGlm
aWVkIGJ5IHRoZSBhcHBsaWNhdGlvbiwgYnV0IG1heSBiZQotbW9kaWZpZWQgYnkgYSBzdWJzZXF1
ZW50IGNhbGwgdG8KK1RoaXMgc3RyaW5nIG11c3Qgbm90IGJlIG1vZGlmaWVkIGJ5IHRoZSBhcHBs
aWNhdGlvbiwKK2FuZCB0aGUgcmV0dXJuZWQgcG9pbnRlciB3aWxsIGJlIGludmFsaWRhdGVkIG9u
IGEgc3Vic2VxdWVudCBjYWxsIHRvCiAuQlIgc3RyZXJyb3IgKCkKIG9yCi0uQlIgc3RyZXJyb3Jf
bCAoKS4KKy5CUiBzdHJlcnJvcl9sICgpLAorb3IgaWYgdGhlIHRocmVhZCB0aGF0IG9idGFpbmVk
IHRoZSBzdHJpbmcgZXhpdHMuCiBObyBvdGhlciBsaWJyYXJ5IGZ1bmN0aW9uLCBpbmNsdWRpbmcK
IC5CUiBwZXJyb3IgKDMpLAogd2lsbCBtb2RpZnkgdGhpcyBzdHJpbmcuCkBAIC0xMDAsMTIgKzEw
MSwxMiBAQCBGb3IgZXhhbXBsZSwgZ2l2ZW4KIGFzIGFuIGFyZ3VtZW50LCB0aGlzIGZ1bmN0aW9u
IHJldHVybnMgYSBwb2ludGVyIHRvIHRoZSBzdHJpbmcgIkVQRVJNIi4KIC5cIgogLlNTIHN0cmVy
cm9yX3IoKQotVGhlCiAuQlIgc3RyZXJyb3JfciAoKQotZnVuY3Rpb24gaXMgc2ltaWxhciB0bwor
aXMgbGlrZQogLkJSIHN0cmVycm9yICgpLAotYnV0IGlzCi10aHJlYWQgc2FmZS4KK2J1dCBtaWdo
dCB1c2UgdGhlIHN1cHBsaWVkIGJ1ZmZlcgorLkkgYnVmCitpbnN0ZWFkIG9mIGFsbG9jYXRpbmcg
b25lIGludGVybmFsbHkuCiBUaGlzIGZ1bmN0aW9uIGlzIGF2YWlsYWJsZSBpbiB0d28gdmVyc2lv
bnM6CiBhbiBYU0ktY29tcGxpYW50IHZlcnNpb24gc3BlY2lmaWVkIGluIFBPU0lYLjEtMjAwMQog
KGF2YWlsYWJsZSBzaW5jZSBnbGliYyAyLjMuNCwgYnV0IG5vdCBQT1NJWC1jb21wbGlhbnQgdW50
aWwgZ2xpYmMgMi4xMyksCkBAIC0yMzgsNyArMjM5LDcgQEAgSW50ZXJmYWNlCUF0dHJpYnV0ZQlW
YWx1ZQogVHsKIC5CUiBzdHJlcnJvciAoKQogVH0JVGhyZWFkIHNhZmV0eQlUewotTVQtVW5zYWZl
IHJhY2U6c3RyZXJyb3IKK01ULVNhZmUKIFR9CiBUewogLkJSIHN0cmVycm9ybmFtZV9ucCAoKSwK
QEAgLTI0OSw2ICsyNTAsMTAgQEAgVHsKIC5CUiBzdHJlcnJvcl9sICgpCiBUfQlUaHJlYWQgc2Fm
ZXR5CU1ULVNhZmUKIC5URQorLlBQCitCZWZvcmUgZ2xpYmMgMi4zMiwKKy5CUiBzdHJlcnJvciAo
KQoraXMgbm90IE1ULVNhZmUuCiAuaHkKIC5hZAogLnNwIDEKQEAgLTI5MiwxMyArMjk3LDYgQEAg
dG8KIGlmIHRoZSBlcnJvciBudW1iZXIgaXMgdW5rbm93bi4KIEM5OSBhbmQgUE9TSVguMS0yMDA4
IHJlcXVpcmUgdGhlIHJldHVybiB2YWx1ZSB0byBiZSBub24tTlVMTC4KIC5TSCBOT1RFUwotVGhl
IEdOVSBDIExpYnJhcnkgdXNlcyBhIGJ1ZmZlciBvZiAxMDI0IGNoYXJhY3RlcnMgZm9yCi0uQlIg
c3RyZXJyb3IgKCkuCi1UaGlzIGJ1ZmZlciBzaXplIHRoZXJlZm9yZSBzaG91bGQgYmUgc3VmZmlj
aWVudCB0byBhdm9pZCBhbgotLkIgRVJBTkdFCi1lcnJvciB3aGVuIGNhbGxpbmcKLS5CUiBzdHJl
cnJvcl9yICgpLgotLlBQCiAuQlIgc3RyZXJyb3JuYW1lX25wICgpCiBhbmQKIC5CUiBzdHJlcnJv
cmRlc2NfbnAgKCkKQEAgLTMwOSw0ICszMDcsNSBAQCBhcmUgdGhyZWFkLXNhZmUgYW5kIGFzeW5j
LXNpZ25hbC1zYWZlLgogLkJSIGVycm9yICgzKSwKIC5CUiBwZXJyb3IgKDMpLAogLkJSIHN0cnNp
Z25hbCAoMyksCi0uQlIgbG9jYWxlICg3KQorLkJSIGxvY2FsZSAoNyksCisuQlIgc2lnbmFsLXNh
ZmV0eSAoNykKLS0gCjIuMzkuMwoK
--0000000000001944d50601b47a80--

