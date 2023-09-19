Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 441297A6C81
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 22:49:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbjISUtw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 16:49:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbjISUtv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 16:49:51 -0400
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com [IPv6:2607:f8b0:4864:20::f2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D21CB3
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 13:49:45 -0700 (PDT)
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-6515d44b562so34087076d6.3
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 13:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695156584; x=1695761384; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cx9+JtjaJuKphLo8D9MH0mAaZuHqeR246YPVAVl60IA=;
        b=uSGMvjFSukY/i9CO9AE13C5F1vVcquptUGrL5ygw9A5tKFwLrqImHWGvrGZcSYzy55
         aFWCA7lccFUd67tuMnJfzjPcyJKZg0AgyGfB8fNyYExEoVDmZU23s8/duF6tE9seJf1p
         zlCSsMUongifEIHj46ztujnDufb7ehwHMO59M9P7dUbDalLJv7AKneaNo7pqByIZbVI+
         Rh5BKt+kS2xtTVGwj6XYkNlWa1X9444ZyDu1s0IF1nV0AftmZNQdvZrJVJDiiinuv9c6
         NlwErdId+XYwOjth0Q2W9Lg4WPnPvBHJaWs+GTx95tJ4U2cuzDq17ahlk3II8hLz/ydr
         eYuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695156584; x=1695761384;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cx9+JtjaJuKphLo8D9MH0mAaZuHqeR246YPVAVl60IA=;
        b=wT8A7PHc4810T/4gksXF1NRtJYhpxWuqqDLP2iMmielE4jYYVef5rHOMPw5kAJYfej
         A6l0rql2U88sEsKk2WBzpebWMDceK/QRAOo3XLmNQZ3Ye+nT8opAYqt67lIfy2GQ1agz
         Fma0cB8NeyR3i+HV7Ln65Jo0dj4cS4pS5RcIeM1Lk0tRfm4a5mbsHvj+VkWKqs/McbmD
         Lcya/6geMHrwSYIe0IZ8PIGgU83j8BbwXbzTKiv86FXu3li9CwwVv0d/qBgU4qz99FIK
         ZPawGofKyomikl49FAc6CUinght9/QlSVuu/nLyk9AcOaPqRFWRBIy79uC2ebN3V7pK4
         eECA==
X-Gm-Message-State: AOJu0Yx1LTAYCeo2Tfzqcq+fFQYCc+xBY4zJhOxGdg0jvDERRNmCw/nM
        EztREsY/gY7pZzCJIHlk7lDkAMpLxtk7M9ncgJuDzH6MQsbuqN9GIIA=
X-Google-Smtp-Source: AGHT+IH7QIl6d3Rd2eB59slxxEm2eLrvP0JNDjhDp0C6Kotbh5tKAsVyYtbskePCwAPKe0k3gWP1c7wIRSKW806Ng9Y=
X-Received: by 2002:a05:6214:a71:b0:651:9fa8:9fd9 with SMTP id
 ef17-20020a0562140a7100b006519fa89fd9mr468284qvb.51.1695156584497; Tue, 19
 Sep 2023 13:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgzZoqxNGmDMbp8Dh0n5TQwDu-8POf8=9fyaaRUwLVRw2skZg@mail.gmail.com>
 <20230223213758.pixv4m6uf4gzhxxo@jwilk.net> <CAJgzZordjqNX4LHq9K9uatcWOoXO0whbHhuOeKgawtzvQ_OE+A@mail.gmail.com>
 <CAJgzZoqTNiEadyD5uAY17FAwPeMwGzqKVqPaaLy-pTz0tzu=qQ@mail.gmail.com>
In-Reply-To: <CAJgzZoqTNiEadyD5uAY17FAwPeMwGzqKVqPaaLy-pTz0tzu=qQ@mail.gmail.com>
From:   enh <enh@google.com>
Date:   Tue, 19 Sep 2023 13:49:33 -0700
Message-ID: <CAJgzZood-DOXNw46anDp1wSGO8GzdgJM0gAq2dgG2cAyvXQGEA@mail.gmail.com>
Subject: Re: [PATCH] fseek.3: incorporate fseeko()/ftello().
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Rob Landley <rob@landley.net>
Content-Type: multipart/mixed; boundary="0000000000000f55dd0605bc6669"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--0000000000000f55dd0605bc6669
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 24, 2023 at 10:06=E2=80=AFAM enh <enh@google.com> wrote:
>
> (sending again as plain text.)
>
>
> On Fri, Feb 24, 2023 at 10:02 AM enh <enh@google.com> wrote:
> >
> >
> >
> > On Thu, Feb 23, 2023 at 1:38 PM Jakub Wilk <jwilk@jwilk.net> wrote:
> >>
> >> * enh <enh@google.com>, 2023-02-22 12:42:
> >> > The
> >> >+.BR fseeko ()
> >> >+end
> >>
> >> s/end/and/
> >
> >
> > ack. will fix.
> >
> >>
> >> >+.BR ftello ()
> >> >+functions are similar, except that the
> >>
> >> "similar, except..." sounds awkward to me. (And it's not the wording
> >> fseeko.3 used.)
> >
> >
> > sounds right to me, and seems widely used in existing pages though? str=
ncmp(), for example. ("same, except" is also used in existing pages, but se=
ems less common.)
> >
> > but at a higher level (the "not the wording fseeko.3" used) i vacillate=
d there between "just copy" and "try to improve" because i have two problem=
s i'm trying to solve:
> >
> > 1. someone (rob) who knows the c library about as well as anyone i know=
 who _isn't_ a c library maintainer themselves wasn't aware of fseeko()/fte=
llo(), and the existing fseek() page misled them into thinking that fsetpos=
()/fgetpos() was their only option.
> >
> > 2. in 2023 where most people assume sizeof(long)*8 =3D=3D 64, a lot of =
people don't understand why fseek()/ftell() isn't "good enough". my initial=
 version of the patch talked more about ILP32 systems and LLP64 systems (ak=
a "Windows") where "long" isn't equivalent to "int64_t". (but the need to t=
alk about _FILE_OFFSET_BITS too made the whole section a bit unwieldy.)
> >
> > any version of this patch fixes #1.
> >
> > fixing #2 well is the trickier part, and i'm curious if there are any o=
ther opinions there before i send out a new version of the patch?
> >
> >>
> >> --
> >> Jakub Wilk

--0000000000000f55dd0605bc6669
Content-Type: application/octet-stream; 
	name="0001-fseek.3-incorporate-fseeko-ftello.patch"
Content-Disposition: attachment; 
	filename="0001-fseek.3-incorporate-fseeko-ftello.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lmqsg1d50>
X-Attachment-Id: f_lmqsg1d50

RnJvbSAyZDFlYjkwY2Q1YjQzZWNhNTllYjFjMzBlZjA1MGUxYWEzODI3MGM3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFdlZCwgMjIgRmViIDIwMjMgMjA6Mzc6MzEgKzAwMDAKU3ViamVjdDogW1BBVENIXSBmc2Vlay4z
OiBpbmNvcnBvcmF0ZSBmc2Vla28oKS9mdGVsbG8oKS4KCmZzZWVrbygpL2Z0ZWxsbygpIGFyZSBp
bXBvcnRhbnQgZm9yIGNvZGUgdGhhdCBuZWVkcyB0byB3b3JrIHdpdGggbGFyZ2UKZmlsZXMgb24g
TFAzMiBzeXN0ZW1zIG9yIExMUDY0IHN5c3RlbXMgKFdpbmRvd3MpLCBidXQgY3VycmVudGx5IGhh
cmQgdG8KZmluZCB1bmxlc3MgeW91IGFscmVhZHkga25vdyB3aGF0IHlvdSdyZSBsb29raW5nIGZv
ci4KClNpZ25lZC1vZmYtYnk6IEVsbGlvdHQgSHVnaGVzIDxlbmhAZ29vZ2xlLmNvbT4KLS0tCiBt
YW4zL2ZzZWVrLjMgIHwgIDgwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0t
CiBtYW4zL2ZzZWVrby4zIHwgMTA1ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiBtYW4zL2Z0ZWxsby4zIHwgICAyICstCiAzIGZpbGVzIGNoYW5nZWQs
IDc2IGluc2VydGlvbnMoKyksIDExMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tYW4zL2Zz
ZWVrLjMgYi9tYW4zL2ZzZWVrLjMKaW5kZXggZGM5ODI4MGUyLi5iNTg0ZTY4MDkgMTAwNjQ0Ci0t
LSBhL21hbjMvZnNlZWsuMworKysgYi9tYW4zL2ZzZWVrLjMKQEAgLTEyLDkgKzEyLDE1IEBACiAu
XCIKIC5cIiBDb252ZXJ0ZWQgZm9yIExpbnV4LCBNb24gTm92IDI5IDE1OjIyOjAxIDE5OTMsIGZh
aXRoQGNzLnVuYy5lZHUKIC5cIgorLlwiIGZzZWVrby9mdGVsbG8gcG9ydGlvbnM6CisuXCIKKy5c
IiBDb3B5cmlnaHQgMjAwMSBBbmRyaWVzIEJyb3V3ZXIgPGFlYkBjd2kubmw+LgorLlwiCisuXCIg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IExpbnV4LW1hbi1wYWdlcy1jb3B5bGVmdAorLlwiCiAu
VEggZnNlZWsgMyAoZGF0ZSkgIkxpbnV4IG1hbi1wYWdlcyAodW5yZWxlYXNlZCkiCiAuU0ggTkFN
RQotZmdldHBvcywgZnNlZWssIGZzZXRwb3MsIGZ0ZWxsLCByZXdpbmQgXC0gcmVwb3NpdGlvbiBh
IHN0cmVhbQorZmdldHBvcywgZnNlZWssIGZzZWVrbywgZnNldHBvcywgZnRlbGwsIGZ0ZWxsbywg
cmV3aW5kIFwtIHJlcG9zaXRpb24gYSBzdHJlYW0KIC5TSCBMSUJSQVJZCiBTdGFuZGFyZCBDIGxp
YnJhcnkKIC5SSSAoIGxpYmMgIiwgIiBcLWxjICkKQEAgLTI1LDExICszMSwyNSBAQCBTdGFuZGFy
ZCBDIGxpYnJhcnkKIC5CSSAiaW50IGZzZWVrKEZJTEUgKiIgc3RyZWFtICIsIGxvbmcgIiBvZmZz
ZXQgIiwgaW50ICIgd2hlbmNlICk7CiAuQkkgImxvbmcgZnRlbGwoRklMRSAqIiBzdHJlYW0gKTsK
IC5QUAorLkJJICJpbnQgZnNlZWtvKEZJTEUgKiIgc3RyZWFtICIsIG9mZl90ICIgb2Zmc2V0ICIs
IGludCAiIHdoZW5jZSApOworLkJJICJvZmZfdCBmdGVsbG8oRklMRSAqIiBzdHJlYW0gKTsKKy5Q
UAogLkJJICJ2b2lkIHJld2luZChGSUxFICoiIHN0cmVhbSApOwogLlBQCiAuQkkgImludCBmZ2V0
cG9zKEZJTEUgKnJlc3RyaWN0ICIgc3RyZWFtICIsIGZwb3NfdCAqcmVzdHJpY3QgIiBwb3MgKTsK
IC5CSSAiaW50IGZzZXRwb3MoRklMRSAqIiBzdHJlYW0gIiwgY29uc3QgZnBvc190ICoiIHBvcyAp
OwogLmZpCisuUFAKKy5SUyAtNAorRmVhdHVyZSBUZXN0IE1hY3JvIFJlcXVpcmVtZW50cyBmb3Ig
Z2xpYmMgKHNlZQorLkJSIGZlYXR1cmVfdGVzdF9tYWNyb3MgKDcpKToKKy5SRQorLlBQCisuQlIg
ZnNlZWtvICgpLAorLkJSIGZ0ZWxsbyAoKToKKy5uZgorICAgIF9GSUxFX09GRlNFVF9CSVRTID09
IDY0IHx8IF9QT1NJWF9DX1NPVVJDRSA+PSAyMDAxMTJMCisuZmkKIC5TSCBERVNDUklQVElPTgog
VGhlCiAuQlIgZnNlZWsgKCkKQEAgLTYyLDYgKzgyLDM0IEBAIHN0cmVhbSBwb2ludGVkIHRvIGJ5
CiAuSVIgc3RyZWFtIC4KIC5QUAogVGhlCisuQlIgZnNlZWtvICgpCitlbmQKKy5CUiBmdGVsbG8g
KCkKK2Z1bmN0aW9ucyBhcmUgc2ltaWxhciwgZXhjZXB0IHRoYXQgdGhlCisuSSBvZmZzZXQKK2Fy
Z3VtZW50IG9mCisuQlIgZnNlZWtvICgpCithbmQgdGhlIHJldHVybiB2YWx1ZSBvZgorLkJSIGZ0
ZWxsbyAoKQoraXMgb2YgdHlwZQorLkkgb2ZmX3QKK2luc3RlYWQgb2YKKy5JUiBsb25nIC4KKy5Q
UAorT24gc29tZSBhcmNoaXRlY3R1cmVzLCBib3RoCisuSSBvZmZfdAorYW5kCisuSSBsb25nCith
cmUgMzItYml0IHR5cGVzLCBidXQgZGVmaW5pbmcKKy5CIF9GSUxFX09GRlNFVF9CSVRTCit3aXRo
IHRoZSB2YWx1ZSA2NCAoYmVmb3JlIGluY2x1ZGluZworLkkgYW55CitoZWFkZXIgZmlsZXMpCit3
aWxsIHR1cm4KKy5JIG9mZl90CitpbnRvIGEgNjQtYml0IHR5cGUuCisuUFAKK1RoZQogLkJSIHJl
d2luZCAoKQogZnVuY3Rpb24gc2V0cyB0aGUgZmlsZSBwb3NpdGlvbiBpbmRpY2F0b3IgZm9yIHRo
ZSBzdHJlYW0gcG9pbnRlZCB0byBieQogLkkgc3RyZWFtCkBAIC0xMDksMTEgKzE1NywxNCBAQCBm
dW5jdGlvbiByZXR1cm5zIG5vIHZhbHVlLgogVXBvbiBzdWNjZXNzZnVsIGNvbXBsZXRpb24sCiAu
QlIgZmdldHBvcyAoKSwKIC5CUiBmc2VlayAoKSwKKy5CUiBmc2Vla28gKCksCiAuQlIgZnNldHBv
cyAoKQogcmV0dXJuIDAsCiBhbmQKIC5CUiBmdGVsbCAoKQotcmV0dXJucyB0aGUgY3VycmVudCBv
ZmZzZXQuCithbmQKKy5CUiBmdGVsbG8gKCkKK3JldHVybiB0aGUgY3VycmVudCBvZmZzZXQuCiBP
dGhlcndpc2UsIFwtMSBpcyByZXR1cm5lZCBhbmQKIC5JIGVycm5vCiBpcyBzZXQgdG8gaW5kaWNh
dGUgdGhlIGVycm9yLgpAQCAtMTI0LDYgKzE3NSw4IEBAIFRoZQogLkkgd2hlbmNlCiBhcmd1bWVu
dCB0bwogLkJSIGZzZWVrICgpCitvcgorLkJSIGZzZWVrbyAoKQogd2FzIG5vdAogLkJSIFNFRUtf
U0VUICwKIC5CUiBTRUVLX0VORCAsCkBAIC0xMzksOSArMTkyLDExIEBAIGlzIG5vdCBzZWVrYWJs
ZSAoZS5nLiwgaXQgcmVmZXJzIHRvIGEgcGlwZSwgRklGTywgb3Igc29ja2V0KS4KIFRoZSBmdW5j
dGlvbnMKIC5CUiBmZ2V0cG9zICgpLAogLkJSIGZzZWVrICgpLAorLkJSIGZzZWVrbyAoKSwKIC5C
UiBmc2V0cG9zICgpLAorLkJSIGZ0ZWxsICgpLAogYW5kCi0uQlIgZnRlbGwgKCkKKy5CUiBmdGVs
bG8gKCkKIG1heSBhbHNvIGZhaWwgYW5kIHNldAogLkkgZXJybm8KIGZvciBhbnkgb2YgdGhlIGVy
cm9ycyBzcGVjaWZpZWQgZm9yIHRoZSByb3V0aW5lcwpAQCAtMTYyLDcgKzIxNyw5IEBAIGwgbCBs
LgogSW50ZXJmYWNlCUF0dHJpYnV0ZQlWYWx1ZQogVHsKIC5CUiBmc2VlayAoKSwKKy5CUiBmc2Vl
a28gKCksCiAuQlIgZnRlbGwgKCksCisuQlIgZnRlbGxvICgpLAogLkJSIHJld2luZCAoKSwKIC5C
UiBmZ2V0cG9zICgpLAogLkJSIGZzZXRwb3MgKCkKQEAgLTE3Miw3ICsyMjksMTggQEAgVH0JVGhy
ZWFkIHNhZmV0eQlNVC1TYWZlCiAuYWQKIC5zcCAxCiAuU0ggU1RBTkRBUkRTCi1QT1NJWC4xLTIw
MDEsIFBPU0lYLjEtMjAwOCwgQzk5LgorUE9TSVguMS0yMDAxLCBQT1NJWC4xLTIwMDguIEV2ZXJ5
dGhpbmcgZXhjZXB0IGZvcgorLkJSIGZzZWVrbyAoKQorYW5kCisuQlIgZnRlbGxvICgpCithcmUg
YWxzbyBDOTkuCisuU0ggTk9URVMKK1RoZSBkZWNsYXJhdGlvbnMgb2YKKy5CUiBmc2Vla28gKCkK
K2FuZAorLkJSIGZ0ZWxsbyAoKQorY2FuIGFsc28gYmUgb2J0YWluZWQgYnkgZGVmaW5pbmcgdGhl
IG9ic29sZXRlCisuQiBfTEFSR0VGSUxFX1NPVVJDRQorZmVhdHVyZSB0ZXN0IG1hY3JvLgogLlNI
IFNFRSBBTFNPCi0uQlIgbHNlZWsgKDIpLAotLkJSIGZzZWVrbyAoMykKKy5CUiBsc2VlayAoMikK
ZGlmZiAtLWdpdCBhL21hbjMvZnNlZWtvLjMgYi9tYW4zL2ZzZWVrby4zCmluZGV4IGUwZDdjMGI3
Ni4uYTE0ODdiNWE4IDEwMDY0NAotLS0gYS9tYW4zL2ZzZWVrby4zCisrKyBiL21hbjMvZnNlZWtv
LjMKQEAgLTEsMTA0ICsxIEBACi0nXCIgdAotLlwiIENvcHlyaWdodCAyMDAxIEFuZHJpZXMgQnJv
dXdlciA8YWViQGN3aS5ubD4uCi0uXCIKLS5cIiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTGlu
dXgtbWFuLXBhZ2VzLWNvcHlsZWZ0Ci0uXCIKLS5USCBmc2Vla28gMyAoZGF0ZSkgIkxpbnV4IG1h
bi1wYWdlcyAodW5yZWxlYXNlZCkiCi0uU0ggTkFNRQotZnNlZWtvLCBmdGVsbG8gXC0gc2VlayB0
byBvciByZXBvcnQgZmlsZSBwb3NpdGlvbgotLlNIIExJQlJBUlkKLVN0YW5kYXJkIEMgbGlicmFy
eQotLlJJICggbGliYyAiLCAiIFwtbGMgKQotLlNIIFNZTk9QU0lTCi0ubmYKLS5CICNpbmNsdWRl
IDxzdGRpby5oPgotLlBQCi0uQkkgImludCBmc2Vla28oRklMRSAqIiBzdHJlYW0gIiwgb2ZmX3Qg
IiBvZmZzZXQgIiwgaW50ICIgd2hlbmNlICk7Ci0uQkkgIm9mZl90IGZ0ZWxsbyhGSUxFICoiIHN0
cmVhbSApOwotLmZpCi0uUFAKLS5SUyAtNAotRmVhdHVyZSBUZXN0IE1hY3JvIFJlcXVpcmVtZW50
cyBmb3IgZ2xpYmMgKHNlZQotLkJSIGZlYXR1cmVfdGVzdF9tYWNyb3MgKDcpKToKLS5SRQotLlBQ
Ci0uQlIgZnNlZWtvICgpLAotLkJSIGZ0ZWxsbyAoKToKLS5uZgotICAgIF9GSUxFX09GRlNFVF9C
SVRTID09IDY0IHx8IF9QT1NJWF9DX1NPVVJDRSA+PSAyMDAxMTJMCi0uZmkKLS5TSCBERVNDUklQ
VElPTgotVGhlCi0uQlIgZnNlZWtvICgpCi1hbmQKLS5CUiBmdGVsbG8gKCkKLWZ1bmN0aW9ucyBh
cmUgaWRlbnRpY2FsIHRvCi0uQlIgZnNlZWsgKDMpCi1hbmQKLS5CUiBmdGVsbCAoMykKLShzZWUK
LS5CUiBmc2VlayAoMykpLAotcmVzcGVjdGl2ZWx5LCBleGNlcHQgdGhhdCB0aGUKLS5JIG9mZnNl
dAotYXJndW1lbnQgb2YKLS5CUiBmc2Vla28gKCkKLWFuZCB0aGUgcmV0dXJuIHZhbHVlIG9mCi0u
QlIgZnRlbGxvICgpCi1pcyBvZiB0eXBlCi0uSSBvZmZfdAotaW5zdGVhZCBvZgotLklSIGxvbmcg
LgotLlBQCi1PbiBzb21lIGFyY2hpdGVjdHVyZXMsIGJvdGgKLS5JIG9mZl90Ci1hbmQKLS5JIGxv
bmcKLWFyZSAzMi1iaXQgdHlwZXMsIGJ1dCBkZWZpbmluZwotLkIgX0ZJTEVfT0ZGU0VUX0JJVFMK
LXdpdGggdGhlIHZhbHVlIDY0IChiZWZvcmUgaW5jbHVkaW5nCi0uSSBhbnkKLWhlYWRlciBmaWxl
cykKLXdpbGwgdHVybgotLkkgb2ZmX3QKLWludG8gYSA2NC1iaXQgdHlwZS4KLS5TSCBSRVRVUk4g
VkFMVUUKLU9uIHN1Y2Nlc3NmdWwgY29tcGxldGlvbiwKLS5CUiBmc2Vla28gKCkKLXJldHVybnMg
MCwgd2hpbGUKLS5CUiBmdGVsbG8gKCkKLXJldHVybnMgdGhlIGN1cnJlbnQgb2Zmc2V0LgotT3Ro
ZXJ3aXNlLCBcLTEgaXMgcmV0dXJuZWQgYW5kCi0uSSBlcnJubwotaXMgc2V0IHRvIGluZGljYXRl
IHRoZSBlcnJvci4KLS5TSCBFUlJPUlMKLVNlZSB0aGUgRVJST1JTIGluCi0uQlIgZnNlZWsgKDMp
LgotLlNIIFZFUlNJT05TCi1UaGVzZSBmdW5jdGlvbnMgYXJlIGF2YWlsYWJsZSBzaW5jZSBnbGli
YyAyLjEuCi0uU0ggQVRUUklCVVRFUwotRm9yIGFuIGV4cGxhbmF0aW9uIG9mIHRoZSB0ZXJtcyB1
c2VkIGluIHRoaXMgc2VjdGlvbiwgc2VlCi0uQlIgYXR0cmlidXRlcyAoNykuCi0uYWQgbAotLm5o
Ci0uVFMKLWFsbGJveDsKLWxieCBsYiBsYgotbCBsIGwuCi1JbnRlcmZhY2UJQXR0cmlidXRlCVZh
bHVlCi1UewotLkJSIGZzZWVrbyAoKSwKLS5CUiBmdGVsbG8gKCkKLVR9CVRocmVhZCBzYWZldHkJ
TVQtU2FmZQotLlRFCi0uaHkKLS5hZAotLnNwIDEKLS5TSCBTVEFOREFSRFMKLVBPU0lYLjEtMjAw
MSwgUE9TSVguMS0yMDA4LCBTVVN2Mi4KLS5TSCBOT1RFUwotVGhlIGRlY2xhcmF0aW9ucyBvZiB0
aGVzZSBmdW5jdGlvbnMgY2FuIGFsc28gYmUgb2J0YWluZWQgYnkgZGVmaW5pbmcKLXRoZSBvYnNv
bGV0ZQotLkIgX0xBUkdFRklMRV9TT1VSQ0UKLWZlYXR1cmUgdGVzdCBtYWNyby4KLS5TSCBTRUUg
QUxTTwotLkJSIGZzZWVrICgzKQorLnNvIG1hbjMvZnNlZWsuMwpkaWZmIC0tZ2l0IGEvbWFuMy9m
dGVsbG8uMyBiL21hbjMvZnRlbGxvLjMKaW5kZXggZDU2MjhmNDZkLi5hMTQ4N2I1YTggMTAwNjQ0
Ci0tLSBhL21hbjMvZnRlbGxvLjMKKysrIGIvbWFuMy9mdGVsbG8uMwpAQCAtMSArMSBAQAotLnNv
IG1hbjMvZnNlZWtvLjMKKy5zbyBtYW4zL2ZzZWVrLjMKLS0gCjIuMzkuMi42MzcuZzIxYjA2Nzhk
MTktZ29vZwoK
--0000000000000f55dd0605bc6669--
