Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 744A3605BC0
	for <lists+linux-man@lfdr.de>; Thu, 20 Oct 2022 12:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230349AbiJTKBq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Oct 2022 06:01:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230364AbiJTKAw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Oct 2022 06:00:52 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4855A16D8BF
        for <linux-man@vger.kernel.org>; Thu, 20 Oct 2022 03:00:19 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id i9so337748wrv.5
        for <linux-man@vger.kernel.org>; Thu, 20 Oct 2022 03:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:cc:to:content-language:user-agent
         :mime-version:date:message-id:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ZFSgDTNzqoBPAbxvsvyD1VWWOAYeNgSd535lqXW+E4=;
        b=hdiCWD8OGuTb3N4zgl1ZdeqS5wVFu372/KVq6tUZpMvP+bfBGgFuSL3w7pdOwf9Ccw
         1lkcflY+D78ScpRqwkyAwn9cgFn9wAHFBo18n17abRkcDnESabVV2FU9IKyLGuuydfKs
         2aid5mFUfXoyc2eE35rX4oL8haFJOBu/n1mFc322sEtgjpyLitPlYgPGLLdSzSDBWlaq
         Hu6s7eezOqG4/t/qjJDH8ZTrvJNOotRbJkCVrX73UjZWwdcgazlSORUtmYk75iygp+EQ
         2UsLxNbTHupvCQzj3Ro2FDNfvtxJ9x+vTKf2HVLmrQ/hoD8ZlMct02xyqn8Gl5L7qi0+
         O/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:cc:to:content-language:user-agent
         :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ZFSgDTNzqoBPAbxvsvyD1VWWOAYeNgSd535lqXW+E4=;
        b=REt9JSB625pp4l3A4YDLb/YUC0Bbrc8rgjokVCg5UrOJ6QRpmeCb/EPa+7fDwuNrIE
         60HBhwVMXouMO/jterjyXWhLt7NPQbnfsDIYfBnahYunWrgNdOKRtfJycnVs2LVdc2RP
         t7WG8A4uZpKBBLvpMF/MaFrslC++GFmP5akH3Gn38fNFgJmdr5AtxTz6ATERCC1pEIHw
         t7iFb02XsSuTdjI8cFYRHjGIlrbsAM6/KqwiAq4Oy8h4PyEzCIuhpr4h8BeSgV/ur8bg
         DwADshaTf/xxmbU3irlmRhuJyygG/0j4YDeuzdcaCwgRIaO9CRyMUuPgzbI0QGpMDcN7
         6ZpQ==
X-Gm-Message-State: ACrzQf1C157fsWG3cSBKajYyaLRusvZ0gMEDigXljFDAt3HUKTjGTyNA
        fnTYVh2ILD1bE+9yOdZzVyR1fuXlxN0=
X-Google-Smtp-Source: AMsMyM55cZrV+J9a/7kRmgBsGIfJSAhQhEtXx56e9Mac+s8bQQexDvhULVvqyN7SF/2ydvhpigfh9g==
X-Received: by 2002:a05:6000:1547:b0:22e:5617:92e1 with SMTP id 7-20020a056000154700b0022e561792e1mr7752414wry.425.1666260017209;
        Thu, 20 Oct 2022 03:00:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v16-20020a5d43d0000000b00228d67db06esm16253056wrr.21.2022.10.20.03.00.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 03:00:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
Message-ID: <38c0bbb7-0010-0f9c-9037-4250dc718899@kernel.org>
Date:   Thu, 20 Oct 2022 12:00:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Remove man-pages-<version>.Announce
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

I'm considering removing that file, since it's doesn't really contain 
anything announcing the specific version being released.
It looks to me more like a README file, with minor mentions to having a 
new release.

I won't even replace it by a proper NEWS file (per GNU guidelines), 
since I transformed the Changes file to be something small enough to 
work also as a news file (i.e., it doesn't cover all changes, but rather 
important ones, referring to the git log for more details).

So, I'll remove it in a few days.  Please talk if you consider that it 
shouldn't be removed for some reason.

Maybe I'll move some of its information to the README.

Cheers,

Alex

-- 
<http://www.alejandro-colomar.es/>
