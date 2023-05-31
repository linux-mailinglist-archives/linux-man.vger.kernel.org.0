Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97B0B718D8A
	for <lists+linux-man@lfdr.de>; Wed, 31 May 2023 23:51:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230186AbjEaVvS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 May 2023 17:51:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbjEaVvQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 May 2023 17:51:16 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4BA4A0
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 14:51:05 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-3f6c6320d4eso28221cf.1
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 14:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685569865; x=1688161865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=npo4iF9dYCgQ+n8j3c+lEEssVPe4fNm3LhDwNN0cYqc=;
        b=X0V1K9j4Zvtk/H81NJS79oJPr4r2DT+Oea0gck2ch+NHaEA8RK/pjkfTNMaxoS/8jL
         k9aWyQU3m7vH18ltLwNHIXbW32KeGN8mwT5NeAmU2ef2pWejnx0wSCsVCPaDeuPTHgB3
         F656tNAZxZ34w3wQHq1MFQSjQyf/Y8dgBTUyjPJOzKYFHkoMsohb2X8mHXhUWUCGEsOU
         1UCRr9pc9iwEI7BXeAlev3a/jiGIkVeD8tyFO7s0+NpeoGvqgOo66r2xONoYuwfz0FlS
         DgMxkTKf/4UrafleNR/JXO3TI9kPZ/4xAE0l3fwkSc3y1V0UuslYZ60bgwSF0kMb1eQv
         Jw9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685569865; x=1688161865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=npo4iF9dYCgQ+n8j3c+lEEssVPe4fNm3LhDwNN0cYqc=;
        b=FyfQg1LUyCU44bz9zR9h3DblfqHL+SbR410q8PXPp69g+Jq3ZusYlS35sK6i9MjpT2
         4XxpOvZlM9xzsfGmiiR4IttMeoT47z52bzyE2b5pDTHiyq+YnNDUJQL0Ia29PevGt+sP
         hp468JKLixRrPAU2hXc6ZTUg6kpKpxQGpCgrM4yuFBVQNHbj8NMBBQyp5FIqH3fcfD7z
         6PvUk53/XWrefbKtPWv8gN7aO8DAB4mAxdMziE+P3MNkTnfGwcGzWLCT/rT271XBqgBl
         +Z0E4hdN05oLk14mDAxO1VE4FflWhIGiLnpUy4ZJ/KZmsKDhz/zgWwuL+w+oHl7/5L0i
         uIJw==
X-Gm-Message-State: AC+VfDwcOssJD0MtKuhnZEFWwggRtWTOCPeTebSBO4om2+ZeVR72a436
        1Oq+h2YK1j6RK1nbNPRH/to7BK3zEdXM9qKDelky8G5Uy18IjdjmCzh9sw==
X-Google-Smtp-Source: ACHHUZ4kieFIyQudQsNFaCCYxz9iDKKqsMyB//UGl9WhOdkF0uKpv3/SGJHz1S+z25+jNNqnRqGR+lzjNgk4amqgxFA=
X-Received: by 2002:a05:622a:1820:b0:3f8:175a:4970 with SMTP id
 t32-20020a05622a182000b003f8175a4970mr74775qtc.18.1685569864866; Wed, 31 May
 2023 14:51:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAELULbfH8n8Gst4Bi+d9vNhiRn4xDU-wgEau5s9cPQMFVd1tqg@mail.gmail.com>
 <926226db-e3ad-007b-b931-182530182a50@gmail.com>
In-Reply-To: <926226db-e3ad-007b-b931-182530182a50@gmail.com>
From:   Zijun Zhao <zijunzhao@google.com>
Date:   Wed, 31 May 2023 14:50:53 -0700
Message-ID: <CAELULbdo4TJBHxOFZ=+rwgko1ybqqHZXje+u8+bf0tptU7t2ZA@mail.gmail.com>
Subject: Re: [PATCH] Fix the man page of setsockopt.2
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     enh <enh@google.com>, Dan Albert <danalbert@google.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="0000000000000ad48d05fd045112"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--0000000000000ad48d05fd045112
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alejandro,
  yes, that's what needs to fix. The documentation for setsockopt() in
https://man7.org/linux/man-pages/man2/setsockopt.2.html, the
documentation for getsockopt(2) should be more clear. The value in
getsockopt() may be NULL, but value in setsockopt() must be NONNULL
due to reasons listed in the previous emails. I update the fix (see in
the attached patch). Thank you!
Best,
Zijun


On Wed, May 31, 2023 at 1:29=E2=80=AFPM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Zijun!
>
> On 5/31/23 20:19, Zijun Zhao wrote:
> > Hi there,
> >   We are annotating setsockopt()
> > [https://man7.org/linux/man-pages/man2/setsockopt.2.html] and we will
> > make optval _Nonnull because of the implementation:
> > https://elixir.bootlin.com/linux/latest/source/include/linux/sockptr.h#=
L44
> > but we find something confusing in the linux man page.
> >
> >    From the linux man page, it said The option value is ignored. This
> > is strictly correct but this one should be corrected: If no option
> > value is to be supplied or returned, optval may be NULL. It should be
> > corrected and make it clear that it is _Nonnull.
> >
> >   Also, to prove optval  should be _Nonnull, enh wrote a trivial test
> > program to open a socket and call SO_DETACH_FILTER. He got EINVAL for
> > null, but ENOENT for a dummy value, which makes sense, because he
> > doesn=E2=80=99t actually have a filter to detach, so that's the expecte=
d
> > error.
> >
> >    Thank you!
> >
> > Best,
> > Zijun Zhao
>
> That patch you're sending modifies the documentation for getsockopt(2),
> not setsockopt(2).  Please revise.
>
> > diff --git a/man2/getsockopt.2 b/man2/getsockopt.2
> > index a0cda8e87..28059793a 100644
> > --- a/man2/getsockopt.2
> > +++ b/man2/getsockopt.2
> > @@ -70,23 +70,24 @@ .SH DESCRIPTION
> >  they identify a buffer in which the value for the
> >  requested option(s) are to be returned.
> >  For
> >  .BR getsockopt (),
> >  .I optlen
> >  is a value-result argument, initially containing the
> >  size of the buffer pointed to by
> >  .IR optval ,
> >  and modified on return to indicate the actual size of
> >  the value returned.
> > -If no option value is to be supplied or returned,
> >  .I optval
> > -may be NULL.
> > +should be
> > +.B NONNULL ,
> > +even no option value is to be supplied or returned.
> >  .PP
> >  .I Optname
> >  and any specified options are passed uninterpreted to the appropriate
> >  protocol module for interpretation.
> >  The include file
> >  .I <sys/socket.h>
> >  contains definitions for socket level options, described below.
> >  Options at
> >  other protocol levels vary in format and name; consult the appropriate
> >  entries in section 4 of the manual.
>
> Cheers,
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--0000000000000ad48d05fd045112
Content-Type: application/octet-stream; name="changes.patch"
Content-Disposition: attachment; filename="changes.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lic8ri5w0>
X-Attachment-Id: f_lic8ri5w0

RnJvbSBmYzdhOWNmNTZkYWZlYWU1NWMzNDRhZWNjMDIwZDYyMmM3ZGRlZmMzIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBaaWp1biBaaGFvIDx6aWp1bnpoYW9AZ29vZ2xlLmNvbT4KRGF0
ZTogV2VkLCAzMSBNYXkgMjAyMyAxNDo0MToyMSAtMDcwMApTdWJqZWN0OiBbUEFUQ0hdIE1vZGlm
eSB0aGUgZG9jdW1lbnRhdGlvbiBvZiBzZXRzb2Nrb3B0KCkKCi0tLQogbWFuMi9nZXRzb2Nrb3B0
LjIgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9tYW4yL2dldHNvY2tvcHQuMiBiL21hbjIvZ2V0c29ja29wdC4yCmluZGV4IGEwY2RhOGU4
Ny4uOWM5ZGY1MzI3IDEwMDY0NAotLS0gYS9tYW4yL2dldHNvY2tvcHQuMgorKysgYi9tYW4yL2dl
dHNvY2tvcHQuMgpAQCAtNzksNyArNzksMTQgQEAgYW5kIG1vZGlmaWVkIG9uIHJldHVybiB0byBp
bmRpY2F0ZSB0aGUgYWN0dWFsIHNpemUgb2YKIHRoZSB2YWx1ZSByZXR1cm5lZC4KIElmIG5vIG9w
dGlvbiB2YWx1ZSBpcyB0byBiZSBzdXBwbGllZCBvciByZXR1cm5lZCwKIC5JIG9wdHZhbAoraW4K
Ky5CUiBnZXRzb2Nrb3B0ICgpCiBtYXkgYmUgTlVMTC4KK0J1dAorLkkgb3B0dmFsCitpbgorLkJS
IHNldHNvY2tvcHQgKCkKK3Nob3VsZCBrZWVwIE5PTk5VTEwgYXQgYW55IHRpbWUuCiAuUFAKIC5J
IE9wdG5hbWUKIGFuZCBhbnkgc3BlY2lmaWVkIG9wdGlvbnMgYXJlIHBhc3NlZCB1bmludGVycHJl
dGVkIHRvIHRoZSBhcHByb3ByaWF0ZQotLSAKMi40MS4wLnJjMC4xNzIuZzNmMTMyYjcwNzEtZ29v
ZwoK
--0000000000000ad48d05fd045112--
