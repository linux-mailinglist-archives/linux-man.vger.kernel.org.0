Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B15A76A2912
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 11:33:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229569AbjBYKdU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Feb 2023 05:33:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjBYKdT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Feb 2023 05:33:19 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A1EC649
        for <linux-man@vger.kernel.org>; Sat, 25 Feb 2023 02:33:19 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id a3so3529580vsi.0
        for <linux-man@vger.kernel.org>; Sat, 25 Feb 2023 02:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AZFROnHVgjIfGhqkh0YpoMy846G7Ix5Hc5h83vJ7Sxs=;
        b=aThivJ8xfF8QNMITCIi5y0nPdYd6eIT9kSVvLB9Efe4WDBfcLv1gtDhisr+J3ze7nn
         cNq4m+eN+cw5MdjzNqcIXMhkw4wm3omBNPSUBYLudVvN5cY9UyHtproUrHeq3+hT55wI
         SsJBSeRhGLps19js/KCYZvz/gPoXr2/uRQFAULI8xznm0zVVpSI8bhUcSoWSnXenNK+q
         8x6VO2Wcw61TZVuspCrlUEejxYJSU8+77Jkro1vx/Z3+4MFKTeoX1i4cxo7MGYbUX7g8
         AP5uTd2cwVou3pZIWrFZgDQ3lWiAJAePzrgKFb2nHGMRTQNgrFRTLL+MwHtox/4PuhJg
         2k9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AZFROnHVgjIfGhqkh0YpoMy846G7Ix5Hc5h83vJ7Sxs=;
        b=KJrSx+QCzZanQ4dWY78/wyzYuNUaPBeA7+3rnY+CjaCM2DFU6soouhduGdPgrVNrQ4
         05om1N1Js8jWHPPO7oZVpv/VjeBvrvqC+BFNTFzDK6HzpsFwd0GJGdMHmO9OfYQo0OTx
         mXIydKrXk9MSVR4Fdr8fR1VTwM4B/DT6iMt62EK/YdVSYt9g4Wt5UIo0fS1j3T0pbfnU
         U4YYQLgIvSJcfz7XzM1qhd8kLiConHXNOoBud0xud6OiaXWla7FGYKlsUNW5xfsqsFPl
         dZpUyfI+t6yZi+hmiAqgLZ2xxBj8H6dCKCgRso2eE1iCpKb25dUba7AAMBI5WLfhc5JX
         4d2Q==
X-Gm-Message-State: AO0yUKUEgB4KZDIBXDDToWRwTQ5sYsfw2c6SAAAcLDWbQ51gaTWLK1rt
        U56WrN3HUXpUUiaAnrCTaqXXnpH3faE=
X-Google-Smtp-Source: AK7set+85qi2YuX40jWGpBZJOL664agy93NLMbhOxVDtS1UXp+L8xN05Bms8jjssZT/pt8Px6lfr3g==
X-Received: by 2002:a67:ca95:0:b0:414:538d:3af2 with SMTP id a21-20020a67ca95000000b00414538d3af2mr14252086vsl.5.1677321198125;
        Sat, 25 Feb 2023 02:33:18 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id h6-20020a1f2106000000b004007ad86fa2sm203334vkh.46.2023.02.25.02.33.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Feb 2023 02:33:17 -0800 (PST)
Message-ID: <b8941b80-2f6d-68b0-d793-71542f96b6bb@gmail.com>
Date:   Sat, 25 Feb 2023 12:33:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     "Dmitry V . Levin" <ldv@strace.io>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Elvira Khabirova <lineprinter0@gmail.com>
References: <20230225024212.31500-1-fvalasiad@gmail.com>
 <20230225101014.GB16562@altlinux.org>
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <20230225101014.GB16562@altlinux.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 25/2/23 12:10, Dmitry V . Levin wrote:
> I'm not sure about the word "fix" in this context as we are not
> correcting some wrong information but simply extending the documentation.
>
> How about the following wording:
>
> Document the role of PTRACE_O_TRACESYSGOOD option in connection with
> PTRACE_GET_SYSCALL_INFO.

Sure! Do I use Cowritten-by, Acked-by or Reviewed-by?
