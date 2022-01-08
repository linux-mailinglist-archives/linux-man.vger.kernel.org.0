Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BADE4885A4
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 20:44:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229741AbiAHToo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 14:44:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232465AbiAHToo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 14:44:44 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DF07C06173F
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 11:44:43 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id d187-20020a1c1dc4000000b003474b4b7ebcso4200658wmd.5
        for <linux-man@vger.kernel.org>; Sat, 08 Jan 2022 11:44:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PBso0VxY7AHmNE/QgDWO5ZMzL+qj3qR1VQH3YtFpXWk=;
        b=KliMiylNxKEr0CevrLIaUylaX/JKTqEsIC8Ld2KGIjDWFPcDuxTWH9OJyHHeYqGnW+
         dXbpaOUvuQe8j7XaxJuOYHYjr/rh67CIgf4NciodyxbWZTy3KrCkEZrRCM9NcUfzUIO8
         Si/VmTFz11Gxg6xQx1joO8aHpQg6sUeNlbtqqEGSPIpyEvOGlMo5visHxMkCTn+AXT6a
         WgvgZ87+j6GmxevVBBLwC7OpWEHfi0HSKAwX1+k4iSS6CwKTkOXbCq+RNPcf7rit8kbi
         E8odrty7eBHsA7rl34ay1h5/B33tLq70ixZAXp+UtlYVkCC4h0z5UrPselDK4NRuhqEe
         OI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PBso0VxY7AHmNE/QgDWO5ZMzL+qj3qR1VQH3YtFpXWk=;
        b=qwMEN8Sp1iyI323yT2qdSSEnCt8zNNJj6T5qFCbW4SplbPT6NEkO2aJflOIEc2SK6c
         P8vbK5ouMnGlRAPiegaRjDz29+UWg0LoJIahopchRoaDrGvyZU0U84n+zo680n7IfKqz
         x6qv81K9x+gD+T+ba8w5B3offp4OuP/khYAsRGMwb608UFRm45piBj2hnZFjuoMDQCBA
         1olsm7pE2RGIGvSDRdEy0Sp7rcqHoi5RnzjCLHntVqVTeCMoq6geJ7QP96yRrdFNJWB5
         bKDmr6+xP/5rBmRBrS00zyPTrPSRsUbO1y1miTEybe8qV4oGgSUjQR9dAtUptIR/JdfS
         yhIA==
X-Gm-Message-State: AOAM530WwJ2g8UYHk6Lsvc5LgrjQCJzWvruxBTh4h+pgEnjGeIGd1yvy
        VnVVtDN0qAOW92FRxzSq8tu8MuSLXFw=
X-Google-Smtp-Source: ABdhPJwS/aXF1VnkmWdLiKekvVhtxu7v8KkZXBvzbhwHN52G/Tv0+SJ28l0O24Th3YvbNtNefRuXRg==
X-Received: by 2002:a1c:cc08:: with SMTP id h8mr15107646wmb.156.1641671082296;
        Sat, 08 Jan 2022 11:44:42 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p21sm2374259wmq.20.2022.01.08.11.44.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 11:44:42 -0800 (PST)
Message-ID: <3e3a8a78-ef44-f272-6fc6-ea9cdd1effe6@gmail.com>
Date:   Sat, 8 Jan 2022 20:44:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 2/5] newlocale.3: Use LC_GLOBAL_LOCALE, not ..._HANDLE
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220108154304.1030478-1-steve@sk2.org>
 <20220108154304.1030478-2-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220108154304.1030478-2-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/8/22 16:43, Stephen Kitt wrote:
> LC_GLOBAL_HANDLE has never existed; the locale object handle to use to
> refer to the global locale determined by setlocale(3) is
> LC_GLOBAL_LOCALE. See uselocale(3) for details.

Added that text.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
