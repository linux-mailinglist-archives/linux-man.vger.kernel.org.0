Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C3DF2680DC
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 20:46:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725939AbgIMSq6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 14:46:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725936AbgIMSq5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 14:46:57 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 315C2C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:46:56 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id m6so16388104wrn.0
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=v2OpVnarl9suOAhvDyvfJmi70uOg2Dkz2U49TfZVBig=;
        b=lJoBcoXOxLDcK/9luylWbbAA4I/1EhoVN5jfcPxv2zztXJ17o5eEXS0H0jHDzCB3VS
         2cwnlMse9i3i5vQye8A9T2/1UZGcIVkIqvw1TBCYB4QO+Yixt9JJenhiPoHWEr0LVubN
         ergllz51xgjGaLyK3lNjzjRl6cN8DvZjB/Lrlhf0Op+vg1PTOz87D63F/9eV5kcGW2Ji
         yPQNN5g8P9SywQ+GeFJ976rSzXreX5Y1IcbaGYN4Xb/ZgAJPYvYlOvqsEa5u6GDdgqgf
         56YGHalUAMcHEXBgkBeM6fnB2phZ6X+dJ5Z/JhDu3JGd5rKHt+0qAmxL2HqvFmPnnSGc
         /Kzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v2OpVnarl9suOAhvDyvfJmi70uOg2Dkz2U49TfZVBig=;
        b=h2A8tYCkV3p4vnixtNqiAXhBj+XZMC5U9YonQMMoZDeCDVRJEdqwpLs+2j9VZGE9SQ
         8EXidFw0aydpKM/ARx1WoGvkqnkJt0sqzKyA4w+MAcCPH15H+c/06+m8k5R62ve5PMr0
         p+P4Edb/zSPkmvvgHDBLY9naPeDa+Z9HbTtjx1RXGeOooiYXnjcYZY6Qxiw+XEZQdTFQ
         yAQob33ROZkQx1Hu1dBkhIPmEfrIuAS7nAT12rq4TSi6Np5/r/eBTYRiL5slCEccHZ81
         trE3mQMuCIiKa/noCtYL9plA/O3JOh4MQPK00E9PKxMEyqzv/3xIHbyAUw0KWkc0Igug
         iXMQ==
X-Gm-Message-State: AOAM530dArHXmO/86OTRGhEErsTMHqwPNGiVjOXqkMEUCdpoKBIx7j5v
        sBZmD8klU9/tVaC4FvzJEyWmhB5P05tSuA==
X-Google-Smtp-Source: ABdhPJwYN1hI9+KVfOt+vRbCQkTHYzNzMKMYNzN9KHHlfLpJKnt4QxkRoD1RI5D4100gMH64RNRayQ==
X-Received: by 2002:adf:ec90:: with SMTP id z16mr11681766wrn.145.1600022815318;
        Sun, 13 Sep 2020 11:46:55 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id q84sm3863194wme.23.2020.09.13.11.46.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 11:46:54 -0700 (PDT)
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
To:     Konstantin Bukin <kbukin@gmail.com>
Cc:     "Dmitry V. Levin" <ldv@altlinux.org>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
References: <20200913173801.GA15488@altlinux.org>
 <9f5d1d00-9946-5cc0-cc74-3c4820b37c59@gmail.com>
 <CAF98MAKanUQtQN18Rh1F-YEhUqFix9+6aWVHuqSPLWHrJA93TA@mail.gmail.com>
 <ee5cc545-b04a-647f-e8e2-2692af9f1f8e@gmail.com>
 <CAF98MAKZL2oL4U=jPxO4hTm8G7Y7P0D-F26ZSXEWgZEDGO+U2Q@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <139b02b1-901f-c7fc-71ec-3688c062e22b@gmail.com>
Date:   Sun, 13 Sep 2020 20:46:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAF98MAKZL2oL4U=jPxO4hTm8G7Y7P0D-F26ZSXEWgZEDGO+U2Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 9/13/20 8:42 PM, Konstantin Bukin wrote:
>>> Mind I'll send a new patch?
>> Sure.
> 
> The new patch uses "%lld" instead of "%ld".
> 
> Thank you,
> Konsstantin.

BTW, please reply to the thread when submitting a new version of a
patch, so the thread can be easily followed.


If you use git send-email, this might help:

https://burzalodowa.wordpress.com/2013/10/05/how-to-send-patches-with-git-send-email/

Thanks,

Alex
