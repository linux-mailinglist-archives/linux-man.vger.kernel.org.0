Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE83C27A3EA
	for <lists+linux-man@lfdr.de>; Sun, 27 Sep 2020 22:06:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726485AbgI0UFR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Sep 2020 16:05:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726239AbgI0UFR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Sep 2020 16:05:17 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D32BC0613CE;
        Sun, 27 Sep 2020 13:05:17 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id a9so4715895wmm.2;
        Sun, 27 Sep 2020 13:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:references:subject:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YQWOMDXz7tLDX3xByzBgxUzwzrjvuV1wRiUwlJwJskY=;
        b=MfQD71b3OKqdzLiVOgkF0kngNJ/3JbWSkvOKnvC3feb9GStFx4lZ2W6XhXghDnKjRK
         kSkcT6v0mjJ7LFxHZ/YUt81UtVq8H9f+S6xCRf97PkGpgDvVOn5YqOfhhV2wQ7OYGMy6
         49Gi9TSSHDxjJZ/NshRfNOuo1T/oWYJMu71yNwlJCpO54qvU1Vlf19jquJBLY9aMdjrr
         jGSeQcfggs5ZA80EGWNB6PTj+g8LzFbFDwPx7sMbCrcGAOfJm/ps7ZQ6zur+BIQge/yb
         J+FuNA67w46cCta3+jYx8Sc3De2p75ltioI0kERTm93rS1R4acU9zuZvh76TZn94eAiD
         NSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:subject:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YQWOMDXz7tLDX3xByzBgxUzwzrjvuV1wRiUwlJwJskY=;
        b=LnSqEyzMoq4YYEA9dVbERMJYpVsjBvDQVaC9GPIk0EFENebk2VjOtYx76R6KzBhd3A
         GzA0UYWWnddFgvCyBDXvG9XIybsjfHOBVriNwwsnklQ1KC9OkrNycZlvmiPnD3TbszZI
         JOt9bCJhpFK6hCZvRVI/FXJTo9Migocrf8OSFnCOY4hDORN7ydM26GTrec+RJtkUu2Fw
         87rgnwQBd8yxi+Xo7V5qu+f2ZFkZmujlzIeMYmorNNwckpFJIzVXt/p37EaoYqMt8N0/
         GSVifbuNbHr1wCdDc83wsbx0zdOuuIBy/JpHHjTemsrHWjAL8NVVg78dTjMY/tY9ViUB
         wLYQ==
X-Gm-Message-State: AOAM530j84li5GVR00QR0gvgOoHz74poOMK+/TLaZngBnKczUbxqG3w7
        1zY9hE9QKrrrm48SkcG0t7k=
X-Google-Smtp-Source: ABdhPJxl8E6PzDzXqhyzsIyxiJLUS+p/CVAHM08Nf8136EwusH4mlb8wva8mP/JLhorXgrEzfHCl9w==
X-Received: by 2002:a05:600c:230c:: with SMTP id 12mr7981738wmo.23.1601237116055;
        Sun, 27 Sep 2020 13:05:16 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id i16sm10476380wrq.73.2020.09.27.13.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Sep 2020 13:05:15 -0700 (PDT)
To:     g.branden.robinson@gmail.com
Cc:     linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
References: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <562859fd-6740-1068-d9d0-9562140cec33@gmail.com>
Date:   Sun, 27 Sep 2020 22:05:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

* G. Branden Robinson via linux-man:

1)

 > .EX
 > .B int fstat(int \c
 > .IB fd , \~\c
 > .B struct stat *\c
 > .IB statbuf );
 > .EE

2)

 > .EX
 > .BI "int fstat(int " fd ", struct stat *" statbuf );
 > .EE

3)

 > .EX
 > .BI "int fstat(int\~" fd ", struct stat *" statbuf );
 > .EE

I'd say number 2 is best.  Rationale: grep :)
I agree it's visually somewhat harder, but grepping is way easier.

Regards,

Alex
