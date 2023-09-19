Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D6C87A6CE3
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 23:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbjISVVY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 17:21:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229945AbjISVVX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 17:21:23 -0400
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BF43BD
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 14:21:16 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-658612f0b44so4782296d6.0
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 14:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695158475; x=1695763275; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ulcT/E9vUeuIaM99hnNgDTQDsly8lIcjs6HbdHYTnBs=;
        b=DtDhyQ6vVWgIr0ncvU41bRTy/uhg+ZhKnVd4PE1mNRrCzsGlx3AUmLqwV7kDMgKiho
         okC6r4NhLyJnr4gbVeSKHlcFYmLRqK0sVIGtfyDm2ZzG+JaK71X4q8gi6CLWW0KJERrg
         jXpiBYAuq2OvN/smOLn2Tokf+5thHFTSpRVcFCCdzEmnl5AGWD5wmZ3KF5ckt4vHg1n9
         cXpVefVKA+OQukjRC76ZXRVY7C0F++U/Kdj+zqR1M6rSD6tLZPMJfhCdNURjnpG+Miac
         ACJGvB/uJvmQUDe904gatgzewkDW+LuRNhJx3GHKuYQbRDQwTgPi+lCYh9k+f9n0vAT/
         I/Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695158475; x=1695763275;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ulcT/E9vUeuIaM99hnNgDTQDsly8lIcjs6HbdHYTnBs=;
        b=wGstKB5amPz/OmNirL2XD6qAaigVNpQX6JSJc5+IfoKzM1gjWmIYr6TXiRaNjplGPc
         GxG8PfxLKC1YV2KHhaY2MV2ioz4W7ywPVSg43WI6gmT6kYIgXw0eRVfD6xTZZevNLZa8
         OOgjbwuK6AtN2UIijqtG5LZxLWzltKhu6P1+/AdJ6hw2JcfwuiiGOxH7fDTaAtStf7Ah
         lKNScY1i4GHGFYcjn/7Csf3BUunUWWIX+EVS35o+M7Ot5iJCZK8lWyfs45I4CfwNv4ki
         ++YoE2HGK1ZaHZLAbUTvPUVajdJTrftD61t4AosTaw3buuuxK7zMXQmJFy/s+IVUhlPF
         YTlQ==
X-Gm-Message-State: AOJu0YwPynCU0Zrn+G7vxOCro2SAnEt8x6CI8T0CMs7lqr1qasyzXIC7
        C5SygHQZRFw26JMX4rS4X9mPLE/CuUFZL3EBTS7XScbWAn8Fm/bM2Rvm+Q==
X-Google-Smtp-Source: AGHT+IFngdCnkWNgzdOG3P56BeXyAJB5tw7/MUVaTqEQvbwYL1dT5a8DEOq5YioTm7VfhIGUhKf/1Yc4V9JPPJvs8QE=
X-Received: by 2002:a0c:f245:0:b0:647:30f7:904 with SMTP id
 z5-20020a0cf245000000b0064730f70904mr572925qvl.27.1695158475544; Tue, 19 Sep
 2023 14:21:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
 <f0fb0139-1544-415b-a4e1-af4ae92b933d@kernel.org> <dce24a2c-d173-4793-a509-f886c6edd4b4@kernel.org>
In-Reply-To: <dce24a2c-d173-4793-a509-f886c6edd4b4@kernel.org>
From:   enh <enh@google.com>
Date:   Tue, 19 Sep 2023 14:21:04 -0700
Message-ID: <CAJgzZooCdw8RAF+ytFUGddqqM-2ZBWgUoF1vOZ7nwJSdRyZrUA@mail.gmail.com>
Subject: Re: 3p page wording
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000c66c240605bcd6fd"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000c66c240605bcd6fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

(sorry, didn't get chance to get back to this until now. as penance,
i've caught up with a couple of other outstanding man7 patches too!)

thanks for doing the major cleanup. attached is my trivial change on
top of that.


On Wed, Sep 13, 2023 at 4:33=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> On 2023-09-13 23:50, Alejandro Colomar wrote:
> > Hi enh,
> >
> > On 2023-09-13 21:58, enh wrote:
> >> is it a requirement that the 3p pages only contain text that's
> >> explicitly in POSIX?
> >
> > Yes, I guess.
> >
> >> the siginfo_t::si_addr description on
> >> system_data_types.7 (which is what people see if they `man siginfo_t`)
> >> says "Address of faulting instruction", which isn't true for all
> >> signals, and caused enough confusion for the ART maintainers that they
> >> came to me as Android's libc maintainer for an adjudication. meanwhile
> >> the sigaction.2 page says "Memory location which caused fault" which
> >> seems much more helpful.
> >
> > siginfo_t(3type), aka system_data_types(7), isn't a POSIX page, so
> > we can patch it if you want.
> >
> > I'd also move the types to their own pages and have system_data_types(7=
)
> > be a link to intro(3) (until we have an intro(3type)).
>
> I've done this.  Please check if you approve these patches:
>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dcon=
trib>
>
> Cheers,
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>

--000000000000c66c240605bcd6fd
Content-Type: application/octet-stream; 
	name="0001-system_data_types.7-clarify-si_addr-field.patch"
Content-Disposition: attachment; 
	filename="0001-system_data_types.7-clarify-si_addr-field.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lmqtkvs40>
X-Attachment-Id: f_lmqtkvs40

RnJvbSAyMzcxYjk0NGQ0YzFkOWI2NzUxZTU5NTUyOTUzN2IxOWE2ZmE1ZjU2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFR1ZSwgMTkgU2VwIDIwMjMgMTQ6MTY6NTQgLTA3MDAKU3ViamVjdDogW1BBVENIXSBzeXN0ZW1f
ZGF0YV90eXBlcy43OiBjbGFyaWZ5IHNpX2FkZHIgZmllbGQuCgpUaGlzIHBhdGNoIHJldXNlcyB0
aGUgY2xlYXJlciB0ZXh0IGZyb20gc2lnYWN0aW9uLjIgaW5zdGVhZC4KCkkndmUgYWxzbyBmaWxl
ZCBodHRwczovL3d3dy5hdXN0aW5ncm91cGJ1Z3MubmV0L3ZpZXcucGhwP2lkPTE3NzUKdG8gaW1w
cm92ZSBQT1NJWCdzIHdvcmRpbmcgaGVyZSB0byBub3QgYmUgU0lHSUxMLXNwZWNpZmljLgoKU2ln
bmVkLW9mZi1ieTogRWxsaW90dCBIdWdoZXMgPGVuaEBnb29nbGUuY29tPgotLS0KIG1hbjcvc3lz
dGVtX2RhdGFfdHlwZXMuNyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21hbjcvc3lzdGVtX2RhdGFfdHlwZXMuNyBiL21h
bjcvc3lzdGVtX2RhdGFfdHlwZXMuNwppbmRleCAxODQwYTQwZmEuLmQ0NTM4Y2U1YiAxMDA2NDQK
LS0tIGEvbWFuNy9zeXN0ZW1fZGF0YV90eXBlcy43CisrKyBiL21hbjcvc3lzdGVtX2RhdGFfdHlw
ZXMuNwpAQCAtMTI0LDcgKzEyNCw3IEBAIHR5cGVkZWYgc3RydWN0IHsKICAgICBpbnQgICAgICBz
aV9jb2RlOyAgIC8qIFNpZ25hbCBjb2RlICovCiAgICAgcGlkX3QgICAgc2lfcGlkOyAgICAvKiBT
ZW5kaW5nIHByb2Nlc3MgSUQgKi8KICAgICB1aWRfdCAgICBzaV91aWQ7ICAgIC8qIFJlYWwgdXNl
ciBJRCBvZiBzZW5kaW5nIHByb2Nlc3MgKi8KLSAgICB2b2lkICAgICpzaV9hZGRyOyAgIC8qIEFk
ZHJlc3Mgb2YgZmF1bHRpbmcgaW5zdHJ1Y3Rpb24gKi8KKyAgICB2b2lkICAgICpzaV9hZGRyOyAg
IC8qIE1lbW9yeSBsb2NhdGlvbiB3aGljaCBjYXVzZWQgZmF1bHQgKi8KICAgICBpbnQgICAgICBz
aV9zdGF0dXM7IC8qIEV4aXQgdmFsdWUgb3Igc2lnbmFsICovCiAgICAgdW5pb24gc2lndmFsIHNp
X3ZhbHVlOyAgLyogU2lnbmFsIHZhbHVlICovCiB9IHNpZ2luZm9fdDsKLS0gCjIuNDIuMC40NTku
Z2U0ZTM5NmZkNWUtZ29vZwoK
--000000000000c66c240605bcd6fd--
