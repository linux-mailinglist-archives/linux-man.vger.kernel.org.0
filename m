Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60D96266690
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 19:29:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726341AbgIKR2z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 13:28:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726095AbgIKM5k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 08:57:40 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63785C061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 05:47:47 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id s12so11331954wrw.11
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 05:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=GWBnBdX9fOdx32O5Pi4OBj1YpzgXYQxUbEw9xhKaStg=;
        b=NP5RNGBDfUoa84uNe4amrN62QRIatjT1IO16mU5M4khY8a1OQq9VhWEPIBINqY5oJc
         7466VJPHQvcrZ9XH7MV2ZzoAS/4R08GoJqe06bTCgRHTQRY14/fmvjw6AJH+04qenLf2
         ZKZUblNae9M/SGEJ+jeAVKabK/vh488DSArx/mrIkPL3Ij/3vt8hnTTGaS4yy2KqvlVI
         ojhUq0XZxTwFfg7dINH75rjS3IDE3cq7WbzKJpUoudzhWmpEKxAe1ocACf3YbtPA/Oa1
         b4k9sTuTIIS5wB+GtJYy36frxQUqKJ3ZKUUIpaLoilb457C0JiEnU6B8kPXpsosPyzsE
         J7aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=GWBnBdX9fOdx32O5Pi4OBj1YpzgXYQxUbEw9xhKaStg=;
        b=azgXfl7nuR8IMEgr+Zm4Q0kmvNlGue15VhziYt4p51O+6797XZSeJjAHAgbtyb1Hj6
         qRPIK2MeI0ePMIrpHW6aenAGGOMLweK78kDaUofFjrM6bkbGoQ5dVkhVp8N/7eR487g4
         GOU0iJHmhJ+ATUlibZ5V2G/lfBQHG3PGJjH+B3QnjAvWUkmGw1FqGOn/m9H91GQmltvO
         ZIiZSTVHOthp8g/K0Gl4F1xx/2TjeaFxoj1VVy2hZKYUOJj4O+AvtYhDyUNVdMHOyx8X
         A3yf3d2IP/+pLMi9h0LQojwHVg/SMSQMHvph5yEuZBq//usTO1O0pD/odTJfd71HcN5H
         aJLg==
X-Gm-Message-State: AOAM532SgXZy5C7fd7RkOVsyakuS58sjgZ8+HJw7jJkLKlJBSIgWZ66T
        LjeZ0WjG3RjEhGUW1c2KTInNORsykhc=
X-Google-Smtp-Source: ABdhPJwGJw2CN4DZY6rxQ/2uqekJHlhnO++60CKUDlVaoyWdmemZN0ALTdy7+g0YNYw6MFaepePFRQ==
X-Received: by 2002:adf:9125:: with SMTP id j34mr2118828wrj.157.1599828465231;
        Fri, 11 Sep 2020 05:47:45 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id b76sm4416069wme.45.2020.09.11.05.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 05:47:44 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [IDEA] New pages for types: structs and typedfefs
Message-ID: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
Date:   Fri, 11 Sep 2020 14:47:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

In the past, when I was beginning to learn C, I had a lot of trouble 
with the types.

When you want to know about a function, you just type 'man function' and 
that tells you everything you need to know.

However, when you need to use a type, such as a struct or one of those 
weird POSIX types (e.g., loff_t), the only solution is to grep through 
the system headers (e.g., 'cd /usr/include/; grep -rn "struct 
timespec"'), unless you already know in which man page the type appears.

I remember well when I wanted to use 'ssize_t' for the first time: it 
was a nightmare to find which header I had to include to get it.

Do you agree that it would be a good idea to write man pages for the 
types, or at least write link pages that link to the page where the type 
is mentioned?

Thanks,


Alex
