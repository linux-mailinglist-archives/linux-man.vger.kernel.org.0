Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4D60585C22
	for <lists+linux-man@lfdr.de>; Sat, 30 Jul 2022 22:45:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232624AbiG3Upr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Jul 2022 16:45:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231281AbiG3Upq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 30 Jul 2022 16:45:46 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08A2CB7EB
        for <linux-man@vger.kernel.org>; Sat, 30 Jul 2022 13:45:45 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id b21-20020a05600c4e1500b003a32bc8612fso3913444wmq.3
        for <linux-man@vger.kernel.org>; Sat, 30 Jul 2022 13:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=YAUgdaTe92Y5N3ZpbHTHvcLWCDy7R1BPutaj54NF8V4=;
        b=gVg1R218Kzb0mtkbKbdrJ1JmT5imvbwyDrGzwEihqVryKMLn0lI9Twa+kART+CxQxm
         qqZ0KSDKJMq/vNvhSmoKDh1sMqXZux1iXXHrfgZZNL40vzNduXC5euVK5xRQBtxYtiST
         lD9d9OU2zZjF6iK5+nBH+SZP5IDJJnA3OLSVuQB1/89/7ew5jQ5qXPXYko07jBZfr5Ar
         pT4CEXXZADux+W6a3Hl2lmEiZ5cwLblYUNzSVJ68LTuN9X7seOloPEC3PPi2/Y0562Wc
         LDx3szdCrvcrYvaFP7rKChWWdWtN1/CtYVbXfUAqPTpZJ91HhIniMt8DgXIAcsMHtQS/
         YTvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=YAUgdaTe92Y5N3ZpbHTHvcLWCDy7R1BPutaj54NF8V4=;
        b=UUiEepwNBiXG3g0Jg7sw9hI0t5JO5kGTsaRyfxrgSXmcVUU/rp4iwcVmYP78Nx/RLB
         vUVgPO5ZxhYaFtyplp8vpzZwMcMC6Te+4AV+o1mg6V7xhxGSe/qy6lAKqz+++NMNqV60
         5Pm4f+qEHUKCoCvFRbGQiklt/HUobWdIK2voFfpCx7tBCRHdjrdoQwKJxKjEqslYyny3
         h2+Lrx8PGA5w8akN9IN73thziK3aZDfQPbU8jVHLP3gzVJABgheVnWgRw7sekJC7m3an
         fWLcV9G4lT7a63Ney87pe56DRCPdNkCl8exBceRh/EB2q5afLuvS7TD0Oi9YAP6Wqxtz
         7BKA==
X-Gm-Message-State: AJIora/PhWguImQHF1uNRhKUDMj1r54J1r76KWKB1jMeqdo4UvcEJmNr
        fhYH1gWBFtL055jCHmswyvk=
X-Google-Smtp-Source: AGRyM1sZpokLOMh5QuIHEJ3+E4Q/jd/96SPn/3jnW1w3vXbEmJ2O9iTidxu6QWCdwsbUq8FDqz3+yw==
X-Received: by 2002:a7b:cb4e:0:b0:3a2:f3b0:4233 with SMTP id v14-20020a7bcb4e000000b003a2f3b04233mr6382619wmj.50.1659213943617;
        Sat, 30 Jul 2022 13:45:43 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o5-20020a05600c510500b003a2d6f26babsm9684384wms.3.2022.07.30.13.45.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jul 2022 13:45:43 -0700 (PDT)
Message-ID: <f179ea51-9b03-3e18-2377-0a39a7647267@gmail.com>
Date:   Sat, 30 Jul 2022 22:45:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>, Groff <groff@gnu.org>,
        linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: .so colophon.man
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

I'm wondering if it wouldn't be easier to have a constant '.so 
man-pages-colophon.man' line at the end of all of the Linux man-pages, 
instead of appending a COLOPHON at every release.  The 
man-pages-colophon.man file would be shiped together with the pages, and 
it would be created by `make dist`.

I think it's unnecessary to provide a dummy file in the repo, right?  I 
mean, .so is not like #include that would fail hard if the file doesn't 
exist.  It will instead just continue, right?

Do you think it would be a good idea?

I was making the COLOPHON be part of the `make dist` command (to avoid 
having to generate it separately), and this would simplify things a lot.
Not having to append to files controlled by make(1) would avoid having 
to rerun many recipes.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
