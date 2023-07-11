Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0BF474FBEC
	for <lists+linux-man@lfdr.de>; Wed, 12 Jul 2023 01:48:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbjGKXsP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Jul 2023 19:48:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbjGKXsO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Jul 2023 19:48:14 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83A3E170F
        for <linux-man@vger.kernel.org>; Tue, 11 Jul 2023 16:48:13 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-40371070eb7so69781cf.1
        for <linux-man@vger.kernel.org>; Tue, 11 Jul 2023 16:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689119292; x=1691711292;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Fr4TMMYxTzIm4VY2kjAu+WWTJKqSVA4FstkqSbjDm/M=;
        b=oRxoCc/9CxnxEHxTg20kXMokGkwVwIxQLJJtSUR/GHKvLaFvvTMD0ZuZIgfTl1eSw1
         sjQ9nN7ulLJcYE1iSPYweGuGwAR2oEf1wG44dYYvLQjXAgwLyjfiJayo/ltbou91qJHf
         8Qz7tObbuhUWygUFK1LakVUEC4mN3PsAyEwJksr0UwSIthZNmCPBgZNBQ10XF8xQPKWl
         J8zIgtDW+ogHyvfXVL72x2A4f/ldnIdjOxWR/I9Afd1GtvCuVeSAyjgQwuQNd7MQgb8y
         168DL8UsTE+KUmJb5boVCp3CC5hRYbrLZNRLKNAFEdu93YSrub9bdGHTF1oI03f2np2S
         RXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689119292; x=1691711292;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fr4TMMYxTzIm4VY2kjAu+WWTJKqSVA4FstkqSbjDm/M=;
        b=OdIwhfhPkTjzjkUHKRO+k/gDVrPB83r/v/RaGoP9EuKc5cHU0bhnFVKLaacABhhRVt
         1bE/13YhokdEHonPV9Tk0QPgWXVo1eIVTGORLLKuUhMTqajktBGnFJxVhklU5lD79vLn
         Kzj3NpxMV3n2pTMmwz7+MujgsqavcLva+TtdZ9zCHxdZHQiOfh389rjq73XscHVD0Hr2
         INeN8YfR/qvVKoN2geQOr/0NVs0QKbb7Mstj877owcHixNQZnD4r0k3wdZ9ZAH57eK+y
         wJ0QjibBqzr8LLpDtldtW7WFbFFtaAD6DrILzf4S1ZE7DEZSV6LpAMfVY+LHhdzLY+r2
         e/RQ==
X-Gm-Message-State: ABy/qLZ7ecIHuYnhKVbyVBW5fOceNFZeBKmLgGeSEltDzO+giQ4RjqOr
        GJ+9SekywwTpTRsvhCE1KMTeMv6A5BqvGwLvojuNWi50ESFR6/+gnBIQLA==
X-Google-Smtp-Source: APBJJlG/9FyeowUW+Wky8Zs3TCaukLAZwR7V/AwuM8FHszG2sENBtNVM5TsRuFLpEmdCxx3xMtCflWIrko3bWGPb4Hw=
X-Received: by 2002:ac8:590d:0:b0:3f8:5b2:aef4 with SMTP id
 13-20020ac8590d000000b003f805b2aef4mr93866qty.28.1689119292487; Tue, 11 Jul
 2023 16:48:12 -0700 (PDT)
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
In-Reply-To: <bf4dd8ed-ded3-6fe0-d3fa-afa63164bc4c@kernel.org>
From:   Zijun Zhao <zijunzhao@google.com>
Date:   Tue, 11 Jul 2023 16:48:00 -0700
Message-ID: <CAELULbcxcmRXCkXx3_q2WMb8eMHTGfRRw=kmsOCBr-YRauOgUQ@mail.gmail.com>
Subject: Re: [PATCH] Fix the man page
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, enh <enh@google.com>
Content-Type: multipart/mixed; boundary="00000000000069ec7606003ebbbf"
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

--00000000000069ec7606003ebbbf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alejandro,
  Sorry for the late reply! I made some changes(make the subject more
formal, add a blank line, respect the80-column right margin and use -u
to when doing git format-patch) and attached the patch below. But I am
a bit confused about semantic newlines. I think I already start on a
new line and use clause breaks to split long sentences? Do I
misunderstand something? Thank you!
Best,
Zijun Zhao


On Sat, Jul 8, 2023 at 11:37=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Zijun,
>
> Here goes some review of the patch.
>
> > Subject: [PATCH] Modify the documentation of gettimeofday()
>
> Please use 'gettimeofday.2:' as a prefix for the subject line,
> and have a more descriptive subject (most patches do modify
> the documentation, but how?).
>
> See CONTRIBUTING:
>         -  Write a suitable subject line.  Make sure to mention the
>            name(s) of the page(s) being patched.  Example:
>
>               [patch] shmop.2: Add "(void *)" cast to RETURN VALUE
>
> >
> > We find tv arg is allowed to be null in bionic so make the documentatio=
n more clear.
> >
> > Cc: enh <enh@google.com>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > ---
> >  man2/gettimeofday.2 | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/man2/gettimeofday.2 b/man2/gettimeofday.2
> > index 9d134fa49..43f3fd9ff 100644
> > --- a/man2/gettimeofday.2
> > +++ b/man2/gettimeofday.2
> > @@ -175,6 +175,7 @@ .SS C library/kernel differences
> >  .BR gettimeofday ()
> >  is provided in the
> >  .BR vdso (7).
>
> A blank line should introduce the new paragraph, so add '.PP'.
>
> > +The kernel accepts null for both time and timezone. The timezone argum=
ent is ignored by glibc and musl, and not passed to/from the kernel. Androi=
d's bionic passes the timezone argument to/from the kernel, but Android doe=
s not update the kernel timezone based on the device timezone in Settings, =
so the kernel's timezone is typically UTC.
>
> Please respect the 80-column right margin.  If you use vim(1),
> this may be useful to you:
>
>      set colorcolumn=3D73,81
>
> Also, please use semantic newlines.  See man-pages(7):
>
>     Use semantic newlines
>         In  the  source of a manual page, new sentences should be
>         started on new lines, long sentences should be split into
>         lines at clause breaks (commas, semicolons,  colons,  and
>         so on), and long clauses should be split at phrase bound=E2=80=90
>         aries.   This  convention,  sometimes  known as "semantic
>         newlines", makes it easier to see the effect of  patches,
>         which often operate at the level of individual sentences,
>         clauses, or phrases.
>
> Cheers,
> Alex
>
> >  .SH STANDARDS
> >  .TP
> >  .BR gettimeofday ()
> > --
> > 2.40.1
> >

--00000000000069ec7606003ebbbf
Content-Type: application/octet-stream; 
	name="0001-gettimeofday.2-Add-some-details-about-the-nullabilit.patch"
Content-Disposition: attachment; 
	filename="0001-gettimeofday.2-Add-some-details-about-the-nullabilit.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ljyxtwoh0>
X-Attachment-Id: f_ljyxtwoh0

RnJvbSBkMTU5MmI1NmNhMTIzOTU1M2Q3MjViZTE2YjViZDFmODdlZDI4MTYxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBaaWp1biBaaGFvIDx6aWp1bnpoYW9AZ29vZ2xlLmNvbT4KRGF0
ZTogTW9uLCA1IEp1biAyMDIzIDExOjQ1OjQ5IC0wNzAwClN1YmplY3Q6IFtQQVRDSF0gZ2V0dGlt
ZW9mZGF5LjI6IEFkZCBzb21lIGRldGFpbHMgYWJvdXQgdGhlIG51bGxhYmlsaXR5IG9mCiBhcmd1
bWVudCB0diBpbiBkaWZmZXJlbnQgbGlicmFyaWVzLgoKV2UgZmluZCB0diBhcmcgaXMgYWxsb3dl
ZCB0byBiZSBudWxsIGluIGJpb25pYyBzbyBtYWtlIHRoZSBkb2N1bWVudGF0aW9uIG1vcmUgY2xl
YXIuCi0tLQogbWFuMi9nZXR0aW1lb2ZkYXkuMiB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbWFuMi9nZXR0aW1lb2ZkYXkuMiBiL21hbjIv
Z2V0dGltZW9mZGF5LjIKaW5kZXggOWQxMzRmYTQ5Li5hODMwOWFjZjcgMTAwNjQ0Ci0tLSBhL21h
bjIvZ2V0dGltZW9mZGF5LjIKKysrIGIvbWFuMi9nZXR0aW1lb2ZkYXkuMgpAQCAtMTc1LDYgKzE3
NSwxMiBAQCBPbiBzb21lIGFyY2hpdGVjdHVyZXMsIGFuIGltcGxlbWVudGF0aW9uIG9mCiAuQlIg
Z2V0dGltZW9mZGF5ICgpCiBpcyBwcm92aWRlZCBpbiB0aGUKIC5CUiB2ZHNvICg3KS4KKy5QUAor
VGhlIGtlcm5lbCBhY2NlcHRzIG51bGwgZm9yIGJvdGggdGltZSBhbmQgdGltZXpvbmUuIFRoZSB0
aW1lem9uZQorYXJndW1lbnQgaXMgaWdub3JlZCBieSBnbGliYyBhbmQgbXVzbCwgYW5kIG5vdCBw
YXNzZWQgdG8vZnJvbSB0aGUKK2tlcm5lbC4gQW5kcm9pZCdzIGJpb25pYyBwYXNzZXMgdGhlIHRp
bWV6b25lIGFyZ3VtZW50IHRvL2Zyb20gdGhlCitrZXJuZWwsIGJ1dCBBbmRyb2lkIGRvZXMgbm90
IHVwZGF0ZSB0aGUga2VybmVsIHRpbWV6b25lIGJhc2VkIG9uIHRoZQorZGV2aWNlIHRpbWV6b25l
IGluIFNldHRpbmdzLCBzbyB0aGUga2VybmVsJ3MgdGltZXpvbmUgaXMgdHlwaWNhbGx5IFVUQy4K
IC5TSCBTVEFOREFSRFMKIC5UUAogLkJSIGdldHRpbWVvZmRheSAoKQotLSAKMi40MS4wLjI1NS5n
OGIxZDA3MWM1MC1nb29nCgo=
--00000000000069ec7606003ebbbf
Content-Type: application/pgp-signature; name=OpenPGP_signature
Content-Disposition: attachment; filename=OpenPGP_signature
Content-Transfer-Encoding: base64
Content-ID: <18947572d0e2f0777082>
X-Attachment-Id: 18947572d0e2f0777082

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NCg0KaVFJekJBRUJDZ0FkRmlFRTZqcUg4S1Ry
b0REa1hmSkFub3dhKzc3LzJ6SUZBbVNwck40QUNna1Fub3dhKzc3Lw0KMnpKYXpCQUFxenhuVDBC
Q2xrRzNrR0Z4QTIwU29ML3c3bW5ueFpMRlQyRFJVMUFVOEpxQVpxWlF4R0UwV3JwWQ0KZHJYWGh6
eDFTT0RZRzd1QnF2UERneURlVUVjWnJHM1MyYmx5djFmbWtJdkppRjRtamN0MGVzeHQvclhNNnY4
Qw0KOWsrU1pua0pzTzk5MmV0bkhtbFlIZjdzc2UrcEV4dk9mRUxDYW9hN1JvSGxiZEo0c3kweUpn
a3poaVVqbHoydg0KR0FtZTJQRVk0YTZ5eEpsRmhHTTRLclEyL0g1cmVodVpCOHhHQzFhWDJaaWl4
ZFkvWWczQmthc1lYRU1nRHFiMg0KelFhc2dnVE4vdWdwTFZ0YmRuSXdlb3FXMzJxalZMdlZiUUVK
NE5uZXUyNURYWURuaVF0Y05qQUF1OGRsSXpXUg0KV1VLcEpiODllbFI3UE0rRkg3MnE3OUhZdndV
Z0Zqc0djSHR3R3N1V1FKQUpjSlJ3T1FmOTlqeTNHMTJTdUZVaQ0KQnZmaW1vcXBlZzhpdExDUElz
T01GWmV1SWJaeGNOVEIxbkdtb00yZ1NJaW54QmZ5c1puRDVVZTBpUG5zOGJjNQ0KMkR1bllZVERp
TWdMZkxXekxBMk8rRHgyUzcxNmxkdTBkTEM0QUlab3MxWDJ2dHRZdWdDbEdyQVBheU5tSEM3Kw0K
VUNiWkVWVVVaVkp4YUkwa09qUmlDTmlBY3dqR3plcWU5T25TR3dTcnhEcGZMdmtpT2J5ZjZGL2FV
alV0N2dwaA0KNjBzNFdISzREenVhM25GdVlwVXowelg1L2FOa0NYaUIzTHZ1cVRvWVdZSnZaRDVE
ODljSjRxZzhmUzE4YTc3UQ0KNHpnOFdxN0wvWm5zNk94U0FMNXA5MHVLRytlNG9SYkh0RmJaN3du
M0N5RitEVFJPR2M0PQ0KPXU4Wk0NCi0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0tLQ0K
--00000000000069ec7606003ebbbf--
