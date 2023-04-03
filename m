Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 919FE6D4D92
	for <lists+linux-man@lfdr.de>; Mon,  3 Apr 2023 18:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232677AbjDCQZN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Apr 2023 12:25:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232782AbjDCQY6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Apr 2023 12:24:58 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27D5E40CB
        for <linux-man@vger.kernel.org>; Mon,  3 Apr 2023 09:24:31 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id p2so23776285qtw.13
        for <linux-man@vger.kernel.org>; Mon, 03 Apr 2023 09:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680539069;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TbZJ/owSEKBIT9R/T3bG+NYiuizThHC/BYpHAJIfRk0=;
        b=V8XatR2FC2WxDfSdNZLgEn25lnzBAx54ZwV6KN9hZZ/DFJzowQJGI3tOEx5hgzwVok
         VMCO2PGH++ZRB/V78Wq0kTYpVlMiaVmifg42wmailk9JbNAK0ZPqm+qdy4HkU233aW5/
         l3hpxAJeFEL/Bu7nlXKeohF+W1CByJaS/cA4a0Xdmsl4hWvXXKAw04hX7DKbIP3j9FKV
         1nyG6+sJeQR5LKlxtcIMBGa2epTjLh5WC3k/ERJ/2vn0KuXybi7+6USNNgJk76zKw86j
         YmX0FHZm1gXs3pLYYpQH96Yi2LTAU29Sxeiva3nNl39CCckhZZnlJ8jU0We/8Nn2qArj
         xMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680539069;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TbZJ/owSEKBIT9R/T3bG+NYiuizThHC/BYpHAJIfRk0=;
        b=iitn0OMjUVGt2a3z7q2QwA3aGAMneP3NZ0v4nZoBXXJKOyHwIrEH5xDlP6rriVgapO
         5NSAJ/5/VBZo3+mOpUPb2ShdPBR/i5PzrTq5jV3JpXERtGY4n8Nv66gWufT99utxMvuG
         XNMzH9apnZuY/zONdj4Ew8vhxDzHSSvWiVEvnWimmmOhb23fGqCv5ygMWTu07exO9M84
         cxBgTabrxutPdVzBPa3InSHkfdBU2CuhCb5isPmVnEBWexianuG8rGEj551SZlmXH+FC
         dxUzVZ0ba1+dNzImT1g0JmvD1Yrhu0ttZeoAjymEqQ487XsF9bALd31kIgprcev4zaji
         QujQ==
X-Gm-Message-State: AAQBX9cmnPkw3lRBgVnKgpU8CohsR97fc32K/rzz8nyh6xYzyR1Jk1Bf
        tP+eNVB9N13C+NuYCpC9eWiRT2joCPVmbY5vTH0=
X-Google-Smtp-Source: AKy350bWVV0o5DRWwR2eJpiuwvnat2cF8oDFyfB0V0TSaQXcFcrXxiuM3d0t61yqZbw5bFFlaUPcNSuWPhV8RKvtVhg=
X-Received: by 2002:a05:622a:180a:b0:3df:dd8e:4e8 with SMTP id
 t10-20020a05622a180a00b003dfdd8e04e8mr13702400qtc.4.1680539068951; Mon, 03
 Apr 2023 09:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com> <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
 <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com> <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
 <0219f97b-f28e-18f0-3451-87ee00f851aa@gmail.com>
In-Reply-To: <0219f97b-f28e-18f0-3451-87ee00f851aa@gmail.com>
From:   Mingye Wang <arthur200126@gmail.com>
Date:   Tue, 4 Apr 2023 00:24:16 +0800
Message-ID: <CAD66C+anMmcxDAf+KDDzEP7B5HHyzZKiSfZM9Q5fhN3HxqaHbw@mail.gmail.com>
Subject: Re: [PATCHv2] feature_test_macros.7: document clang fortify support
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Sat, Apr 1, 2023 at 5:56=E2=80=AFAM Alejandro Colomar wrote:
> If it's just a reference to the software, that is fine.  If it's a
> reference to the version, then I want it to be greppable.
>

Is my patch attached to the last message all good, or is there
anything more to do?

Thanks,
Mingye
