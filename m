Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46EDF6A03FC
	for <lists+linux-man@lfdr.de>; Thu, 23 Feb 2023 09:39:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232942AbjBWIj4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Feb 2023 03:39:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233670AbjBWIjv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Feb 2023 03:39:51 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85E071ADF3
        for <linux-man@vger.kernel.org>; Thu, 23 Feb 2023 00:39:49 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id l1so9698937wry.10
        for <linux-man@vger.kernel.org>; Thu, 23 Feb 2023 00:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tJoc1rOZhrc+DLP2Yxt7EmaCHJQV0DuPZm5YZiTR9DI=;
        b=dTauTvpA1ZZBjAIfd46pAbu6LATNmsw1FV3BIxViF2E+kITToTD+89t8VysBog9kJb
         HAeKICAuPEUu+CeCGAhOzKZgfDe64lws76kP+5MuQ96wGQ6CX7bmOAva8wKtJBMYwppd
         WVPMDPLW7AlaXTU1u4iA7SA6kFIn3ijG4zGuSXaLbGw7TzPj+zbCUUgLVGQNvzSJ/EUK
         rNpR88IpTdrYb61BkCkqiD+4bTK2Jn/kD8zNYnnWt58Jm5dMHR+LM8klAcGQxgMOqCy3
         jcqgPPuJggq9DHArDAFEOUtqf9h/xQepKpz1vrcNSHuQvqv/hSx1sRF44F31+cZOvrwC
         Xv/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tJoc1rOZhrc+DLP2Yxt7EmaCHJQV0DuPZm5YZiTR9DI=;
        b=Q1Z1SfWJbbXYILJO4+J97CWuoP6557cUlfkUdm3aWMYHTarfURRPWwaVblgYcZV0N1
         Nzm3AaOrhlnOp6xobAUgtphvF52RT7g9Z/Vx0EWqKswFSr4iE5a+hEVMAIltlX+ctLak
         +wmmXygEYaVzB33OzhA2mZT+HK8LfupOYIAK8/S+7W+H/s7CY6bCwZNGjjuvx9aPD87C
         DsYeikAKRawHyBzmcX7fRHBpB0taepESPbg0EO+QXds9PoGGYM8I2Ym1X2v0SGKjZJja
         VoNf6mzkJ/NudyT3VmskqvYkuNfdh+YLNO8LUJccJFp84lad54he/oAIb4XgNA+vcHIk
         orvw==
X-Gm-Message-State: AO0yUKU48Ag1spDmu+Yc+usNqZPXWtgumwZVT8VX0Y18bH6WjNzwiyb9
        9IAoWYYM1nwRe7y1JeA7d9wDBAwfTc8=
X-Google-Smtp-Source: AK7set+vsz5e0vRRTrS7t6vYIy+t9JbW2Rpuv2+H6Yi4y62w9TRbOhpM9q5Y97o9XLLfS5xQuB5nqg==
X-Received: by 2002:a5d:42cc:0:b0:2c7:aed:b97b with SMTP id t12-20020a5d42cc000000b002c70aedb97bmr3891439wrr.62.1677141587953;
        Thu, 23 Feb 2023 00:39:47 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id c62-20020a1c3541000000b003e9ae2a8cbfsm3076352wma.2.2023.02.23.00.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 00:39:47 -0800 (PST)
Date:   Thu, 23 Feb 2023 09:39:46 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Message-ID: <Y/cmUt8XtTU6pm0P@galopp>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <ae071c4a4da0204d3921478797e41b1a@mail.infomaniak.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ae071c4a4da0204d3921478797e41b1a@mail.infomaniak.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Feb 22, 2023 at 08:01:31AM +0100, Mickaël Salaün wrote:
> I think this table is useful, but it should contain a warning to make sure developers don't rely on kernel versions to check Landlock features, but use the dedicated Landlock syscall instead.
> It should be explained that this table is true for the mainline/vanilla kernel, but that can be incorrect for any other kernel (e.g. patched distro kernel, like chromeOS that may backport upstream features).

Thanks, that's a good point. I'll add that.
