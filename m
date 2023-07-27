Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C6E4765B67
	for <lists+linux-man@lfdr.de>; Thu, 27 Jul 2023 20:34:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbjG0SeO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 27 Jul 2023 14:34:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjG0SeO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 27 Jul 2023 14:34:14 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5180E2738
        for <linux-man@vger.kernel.org>; Thu, 27 Jul 2023 11:34:12 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-40540a8a3bbso37911cf.1
        for <linux-man@vger.kernel.org>; Thu, 27 Jul 2023 11:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1690482851; x=1691087651;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wpc+eUMqSNKkZ5g/glskW5+HcFJY7oJ6YqYO/KriUXM=;
        b=gOs9WMiLPU93Esz1lV2nNXNckobnZ4XBKBkYP9edld72w5chdacTDrJhkbfhV516dV
         GGloa2BJmXRXcdyqcrSRKaB59XCZxap+a70NWwBcNOi56Yep/7H06lpRNzejL1BNoD26
         KN0WJH8TjYVnzqhS6ToJLaphmc9fE8pDREvdTZFDxH/QpTCPv0TWkKeET0x3wwe31ugs
         92m6aHswK4ULxGjyjqxhaX09YHn7GRELXauN/n/M83wj1dNmhDGgSN+J0UxLoIkGJoOD
         XUsDeUDw12TanIHGY/SRqm1sgQmboP09RKsbPz+uMTikSJHV1HSjGMANUzRJnqOXKa0D
         YjfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690482851; x=1691087651;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wpc+eUMqSNKkZ5g/glskW5+HcFJY7oJ6YqYO/KriUXM=;
        b=MlEfHor8Zowg4ZOdY6qbuKeEfdfqLE+LUG4BstBW9Fbdd1YwHLguR5EsuvrA1q4pHX
         u6qZDZTxyR2iRD9l/Tecs1UBe9TItDcTzvc5ji4n6BkiJdz6QnkbRIp6Hvr1TtzMXlGJ
         51BiZcxeE6R1LJ/yCzjfQzIdjtdVU/2bwKK1hvzTeH0oclAwdOhsw4F0rS+vpjvxOrzH
         PkWLHcadJO3R7CGZvHxWyel/gJSUPFs8HrEP4jV6iqsEaJ7qeMiOwEmPL/cV626BC7aN
         6OH+0jdfQpHBg+3vkToeVI29rQA61HiihbF/ZMY46htTBBtkgiAL4R9H+XC9i8enxuVq
         mElg==
X-Gm-Message-State: ABy/qLbOPOZnyQg1xrXKpMf6eiMqTw+sTqpxgApLhO7BYzEbKvNyZzzG
        8KhesUKlzVK7XLgTylroEvqXAlpQRviUANn/v5T/lw==
X-Google-Smtp-Source: APBJJlGDJ77Pox5TELYXfPfrADd+5GjYpmv+U+UbQBiB29CFQ6qT7TGT8gQhX59Bfja4cksAJnDVr25NJnzSt0NDdEw=
X-Received: by 2002:a05:622a:253:b0:3f8:8c06:c53b with SMTP id
 c19-20020a05622a025300b003f88c06c53bmr52239qtx.0.1690482851345; Thu, 27 Jul
 2023 11:34:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com> <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com> <CAELULbcAtuqehXmDeRjOPtCOuriw9hrUU2Ndw8-i0Z=9GkbNzg@mail.gmail.com>
 <CAELULbfDFt2Z3T45_brzhWzL8182R=uxpHy_rSdgBSXpp+QQKQ@mail.gmail.com>
 <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
 <CAJgzZooCj9FcHwMam0TC_y6c33K8OFuWGGS0_-Ji+eEhLsXo_Q@mail.gmail.com>
 <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org> <bf4dd8ed-ded3-6fe0-d3fa-afa63164bc4c@kernel.org>
 <CAELULbcxcmRXCkXx3_q2WMb8eMHTGfRRw=kmsOCBr-YRauOgUQ@mail.gmail.com> <61009d70-8033-2e6d-7916-f45033398d7d@kernel.org>
In-Reply-To: <61009d70-8033-2e6d-7916-f45033398d7d@kernel.org>
From:   Zijun Zhao <zijunzhao@google.com>
Date:   Thu, 27 Jul 2023 11:33:35 -0700
Message-ID: <CAELULbd+_kOKdJcKuTS8XqbcFyeZB6Qsi8J_YAe6WuO_+n=26A@mail.gmail.com>
Subject: Re: [PATCH] Fix the man page
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, enh <enh@google.com>
Content-Type: multipart/mixed; boundary="000000000000daeb9306017c350a"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000daeb9306017c350a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alejandro,
  Sorry for the late reply! Thank you for your help! Yes, all comments
are very clear, understandable and helpful! This is the new patch.
Thank you for reviewing! Also, thank Elliott for helping! Hope this
patch is qualified!
Best,
Zijun


On Sat, Jul 15, 2023 at 9:13=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Zijun,
>
> On 2023-07-12 01:48, Zijun Zhao wrote:
> > Hi Alejandro,
> >   Sorry for the late reply!
>
> No problem :-)
>
> > I made some changes(make the subject more
> > formal, add a blank line, respect the80-column right margin and use -u
> > to when doing git format-patch) and attached the patch below.
>
> Thanks!
>
> > But I am
> > a bit confused about semantic newlines. I think I already start on a
> > new line and use clause breaks to split long sentences? Do I
> > misunderstand something? Thank you!
>
> Here's your patch, modified to use semantic newlines:
>
> +The kernel accepts null for both time and timezone.
> +The timezone argument is ignored by glibc and musl,
> +and not passed to/from the kernel.
> +Android's bionic passes the timezone argument to/from the kernel,
> +but Android does not update the kernel timezone
> +based on the device timezone in Settings,
> +so the kernel's timezone is typically UTC.
>
> Does it make sense now?
>
> I'll also comment a few things about the patch:
>
> > +The kernel accepts null for both time and timezone.
>
> We should use the 'tv' and 'tz' identifiers.  We should also use NULL.
> I suggest:
>
> The kernel accepts NULL for both
> .I tv
> and
> .IR tz .
>
> > +The timezone argument is ignored by glibc and musl,
> > +and not passed to/from the kernel.
> > +Android's bionic passes the timezone argument to/from the kernel,
>
> Could you give an example of why bionic differs from glibc and musl,
> and why it can be useful.  It is mostly curiosity, but it might be
> useful to have it documented in the commit message.
>
> > +but Android does not update the kernel timezone
> > +based on the device timezone in Settings,
> > +so the kernel's timezone is typically UTC.
>
> Cheers,
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>

--000000000000daeb9306017c350a
Content-Type: application/x-patch; 
	name="0001-gettimeofday.2-Add-some-details-about-the-nullabilit.patch"
Content-Disposition: attachment; 
	filename="0001-gettimeofday.2-Add-some-details-about-the-nullabilit.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lklhqu6o0>
X-Attachment-Id: f_lklhqu6o0

RnJvbSA1MzkwMDIzNTEyYzRhOGEyYzc5Y2NhNzk0Njk0NGM0ZTM2NzdkM2MwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBaaWp1biBaaGFvIDx6aWp1bnpoYW9AZ29vZ2xlLmNvbT4KRGF0
ZTogTW9uLCA1IEp1biAyMDIzIDExOjQ1OjQ5IC0wNzAwClN1YmplY3Q6IFtQQVRDSF0gZ2V0dGlt
ZW9mZGF5LjI6IEFkZCBzb21lIGRldGFpbHMgYWJvdXQgdGhlIG51bGxhYmlsaXR5IG9mCiBhcmd1
bWVudCB0diBpbiBkaWZmZXJlbnQgbGlicmFyaWVzLgoKV2UgZmluZCB0diBhcmcgaXMgYWxsb3dl
ZCB0byBiZSBudWxsIGluIGJpb25pYyBzbyBtYWtlIHRoZSBkb2N1bWVudGF0aW9uIG1vcmUgY2xl
YXIuClBPU0lYIHNheXMgdGhpcyBiZWhhdmlvciBpcyB1bmRlZmluZWQsIGFuZCBiaW9uaWMganVz
dCBleHBvc2VzIHRoZSBMaW51eCBzeXNjYWxsIGRpcmVjdGx5LgpUaGVyZSdzIG5vIGNvZGUgaW4g
YmlvbmljIGZvciBnZXR0aW1lb2ZkYXkvc2V0dGltZW9mZGF5IC0tLSBqdXN0IGEgZGVzY3JpcHRp
b24gb2YgdGhlCnN5c2NhbGwgbmFtZSBhbmQgYXJndW1lbnRzIGZyb20gd2hpY2ggYW4gYXNzZW1i
bGVyIHN0dWIgaXMgYXV0b21hdGljYWxseSBnZW5lcmF0ZWQgYXQgYnVpbGQgdGltZS4KbXVzbCBh
bmQgZ2xpYmMgZ28gb3V0IG9mIHRoZWlyIHdheSB0byBiZWhhdmUgZGlmZmVyZW50bHkgZnJvbSB0
aGUgTGludXgga2VybmVsLCBidXQgbm8gaWRlYSB3aHkuCi0tLQogbWFuMi9nZXR0aW1lb2ZkYXku
MiB8IDExICsrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL21hbjIvZ2V0dGltZW9mZGF5LjIgYi9tYW4yL2dldHRpbWVvZmRheS4yCmluZGV4
IDlkMTM0ZmE0OS4uYTc1ZTY2MDhjIDEwMDY0NAotLS0gYS9tYW4yL2dldHRpbWVvZmRheS4yCisr
KyBiL21hbjIvZ2V0dGltZW9mZGF5LjIKQEAgLTE3NSw2ICsxNzUsMTcgQEAgT24gc29tZSBhcmNo
aXRlY3R1cmVzLCBhbiBpbXBsZW1lbnRhdGlvbiBvZgogLkJSIGdldHRpbWVvZmRheSAoKQogaXMg
cHJvdmlkZWQgaW4gdGhlCiAuQlIgdmRzbyAoNykuCisuUFAKK1RoZSBrZXJuZWwgYWNjZXB0cyBu
dWxsIGZvciBib3RoCisuSSB0dgorYW5kCisuSVIgdHouCitUaGUgdGltZXpvbmUgYXJndW1lbnQg
aXMgaWdub3JlZCBieSBnbGliYyBhbmQgbXVzbCwKK2FuZCBub3QgcGFzc2VkIHRvL2Zyb20gdGhl
IGtlcm5lbC4KK0FuZHJvaWQncyBiaW9uaWMgcGFzc2VzIHRoZSB0aW1lem9uZSBhcmd1bWVudCB0
by9mcm9tIHRoZSBrZXJuZWwsCitidXQgQW5kcm9pZCBkb2VzIG5vdCB1cGRhdGUgdGhlIGtlcm5l
bCB0aW1lem9uZQorYmFzZWQgb24gdGhlIGRldmljZSB0aW1lem9uZSBpbiBTZXR0aW5ncywKK3Nv
IHRoZSBrZXJuZWwncyB0aW1lem9uZSBpcyB0eXBpY2FsbHkgVVRDLgogLlNIIFNUQU5EQVJEUwog
LlRQCiAuQlIgZ2V0dGltZW9mZGF5ICgpCi0tIAoyLjQxLjAuNTg1LmdkMjE3OGE0YmQ0LWdvb2cK
Cg==
--000000000000daeb9306017c350a--
