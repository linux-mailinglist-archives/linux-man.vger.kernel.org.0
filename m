Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31B0825DCEF
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:12:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730801AbgIDPMe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:12:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730204AbgIDPMd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:12:33 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21583C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:12:33 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id a9so6425722wmm.2
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sf2AEoJDMl7lWOQG3ejfObIudzwDJxgkQi4x5zAGRJI=;
        b=djs/rZUpPKnhmSVf8uyoCxqNfsZ9XflvaVBwn8/jx2ytJ5mjog2099mP5mTBg3svAR
         1SvjQKzVwgFC3+R02J0ad75drd5idmBGbVt+MRzOMOweWQaZTJqxPaSaWeYSTPf//n4v
         g6iRbjOG66i+6XGt0BToRx9ceHneSY3z2FSmeVhkKOY1dt+AdHf0P+Zb+w2rW7HGg5QE
         wBiB1u9IeIS1BboW70Y4u/z+xiyYCcyCYi4usSNbhd/rB1xEb/YvMLULWapbR9Xjiy44
         GuVliALTAzodKuefjnK1pGmEPjBun3NNxPwGvJAJSYzc/x9LBIBiZDMuer8xD3BAdHqq
         OpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sf2AEoJDMl7lWOQG3ejfObIudzwDJxgkQi4x5zAGRJI=;
        b=USdGt/KI4wARAaQ2/3RsZIQfHn2ajmVEkazk2uOuwkzzxNL2hyh9idLVYr+CtB29MW
         48PqzrDqijkaq3Rcj0Tqg9waKqwhtltTkuEsa5t+O91LdhiEmlmhvAe1VjV4glb3wcGG
         DQO9f1OT0iVGVXP2esN6vITWRiDjXADgjnA90fr3yVfPK0mZDhWA3NcYOxeSdB52D83l
         LR5o7rMyjOnQLOF2iVythuyTcRmIUhuzmWqNk4m475QmZoN5CCU2+zO0BrX57t+AbqUd
         8fwtMx+1A+wIwlimfR8JPgMSJnEYkpQGmmWoID8Tn5moBGFiTV4jxtpU4AtilTRG7Bpg
         v3Cg==
X-Gm-Message-State: AOAM531bcfZ9Zq+Vpm2MNkfzKrhMx2TJJ1OO5OxdvbFzxTy09moWuQ7J
        J3skAd1/GkuUiGutjYWD0MA=
X-Google-Smtp-Source: ABdhPJy36omC6JGv2gxvLlJ3mZlP5oOH3YVJn6XYrhIhf0OlJOlE7N4J3kloo4qNQnMJj7wbkAPWwQ==
X-Received: by 2002:a7b:c208:: with SMTP id x8mr7634869wmi.30.1599232351872;
        Fri, 04 Sep 2020 08:12:31 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id a127sm11956555wmh.34.2020.09.04.08.12.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:12:31 -0700 (PDT)
Subject: Re: [PATCH (2) 34/34] unix.7: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
 <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
 <70efd632-15b4-0d18-8c05-7a4ea7fe2353@gmail.com>
Message-ID: <fa6e973f-0a09-a9d2-a6c6-e6359d84df9e@gmail.com>
Date:   Fri, 4 Sep 2020 17:12:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <70efd632-15b4-0d18-8c05-7a4ea7fe2353@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Sorry for the deep threading, I noticed it late and I tried to fix it in
the last messages.  Also there's some email where I forgot to remove
"Re:" from the subject.

Well, that's all!  I can see 2 or 3 patches where I have doubts, but I
think most of them are straightforward.

Cheers,
Alex.
