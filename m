Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46CAC27C276
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725536AbgI2Ke0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:34:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725306AbgI2Ke0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:34:26 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B2D7C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:34:26 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id z1so4802796wrt.3
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Bk9YHtqQBYiXX2EmNAgbNtFBUH/YBof25l/vNHjS2ao=;
        b=ekcUdUL8FH7EKon9EMiZrU7pzcadwRKu6zVYK80M4d6JTn1flYuH9L7z/QM4kcNh5u
         tU1F1uQIhx50wtU2fVEjUSusivjHRfZSjyzQlBuk9YIupfbzMmMLygN8U3tf1epx+KHe
         R308KLiy7ztvlEMRkiLPYH0MkuxaDS3XovmRXHPkKneMmHZnkrBLs/qHixNfrftsm1S5
         TfN8Fz+Cj9QbQTAPxPw5h9n5B2uU2X9+eS/FzVGBTRnxAUt3W7VYtWwMcOKaFHw+HbDt
         l4D4apJA7WxIu7gcr+5AyhlPBk5pg35AQc/9PxOuiYyuTsR7TUV9z99unCzreRHYGY5o
         u3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Bk9YHtqQBYiXX2EmNAgbNtFBUH/YBof25l/vNHjS2ao=;
        b=SULsQUAHq0pNt5AdtcDbJaF3cV3CbcRvvz4rFRpMD12LRO7MU6pYjiZIXwZWB39cF7
         skD2fDz7YpVaZPzUM01cDYb4N0K7xWlwnKbN9bgGLUzFJruPLyRpEOhcDHuS1QbEO4Ai
         rgNRZihp6H0csQetUyb6FahIt/OuG5zjw18V8cm3d9wr5dYW6EGi+77Z93EjOmkc/6Rt
         rvHOuhPZQCJFflYlnvsIvGKky4r7FJPUVGXzpBFFOrbDJr0PGmxgIWNMobAWAu0oqBL8
         U+pzR7IEwcuiSpYKnxRob1btU5N9gUGGKmbq7WKDuFleFaGEj5X1aiB6f+im/Y/max5S
         51WQ==
X-Gm-Message-State: AOAM532kMiBqjK7LvSe78dFF6OxKVPL25GH7F9UqhGl8wPhH8+w0d2V7
        73gyZCyLod7xuNTJp3da5Yk=
X-Google-Smtp-Source: ABdhPJy8oQRrQsetoFeyPxg9Fw8CkigjaPtL3sr1e8qD1GYWMf8ZuQsgGUCOndBg5cHZpdzon7GmXA==
X-Received: by 2002:a5d:4c86:: with SMTP id z6mr3355179wrs.23.1601375664680;
        Tue, 29 Sep 2020 03:34:24 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id p9sm2553037wmg.34.2020.09.29.03.34.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 03:34:24 -0700 (PDT)
Subject: Re: [PATCH v2 0/8] Add some <stdint.h> types
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
 <20200929103028.56566-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <11393875-be1a-ebed-f8cd-233b79149b8f@gmail.com>
Date:   Tue, 29 Sep 2020 12:34:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200929103028.56566-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

D'oh! Now I had a typo when CCing myself :(
