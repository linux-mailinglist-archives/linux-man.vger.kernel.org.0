Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44459326F93
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 00:21:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbhB0XUu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 18:20:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230008AbhB0XUt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 18:20:49 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D32AC06174A
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 15:20:09 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id e23so153443wmh.3
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 15:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=UhMQA5P+f86Bv68kZDJ99Y7IzDN5v8I/SKRPL1vxG90=;
        b=jSqy6tkysa2bfRcHHXMwF16zaKPyhb/Aq50FhXo7to0rpOiW7e4O8K/uL2ga80xrfG
         qnq2LG0TQqjkoXNYNr+XwSAOJ+zBhhBQIO3wR/qQIKK3hTCkphvcc9w3n75Io2tCj9DL
         vX6OY8+fUrhloARKv1t5OXw4mKPq4ywYzgALOBlJZazmRJGaKioRhb0i7PLcoT5x1N7a
         /u1Hv18WVhxQvk1vi6IktWpx4nIO7k59o6P1iXlMZIewMCQGXByyfa3CdxQDnOL0PAuu
         DHyYY8zgkOZM/GVDdBLrX28o13CZKEJxIrUTDTHnozEILUXkC0Zhlwp5PGOs4/yRmgVQ
         1otg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=UhMQA5P+f86Bv68kZDJ99Y7IzDN5v8I/SKRPL1vxG90=;
        b=TVqT36KfzAWyndjKxRL187zQRVCR2RugQy6UwNcKaQEcz+SkgBUUP0v6iOQPY4QHxb
         Wr2b9bjVav6BW89/T30iI3ax8edBia4x1CDQSR9NCTZGTGC+X4SCuhIK4wrWrIvlcU65
         4zCf3CodTj0tiJbh/L3TuFyMIe1LbVw4eAhHG5yQaEzJkxZFRByMwxCr6NNUuviPavTb
         vPTyFvfoUPeM7hEv0PGxqamMwMuoxovE3IE/f9lDluh0xtdl96yPuIvM13PIzcRq0Qg1
         TnyX+0l40fl8srQNe+gjwznH4CWgVIQ/anOzfWTvxQ28vKHd2iYXb7DwVKjN3+IRAUL+
         Q7kA==
X-Gm-Message-State: AOAM5314M1JsdVEQVf1sr+9odmbmmVH3C9yA4OoGqpmlUbyif9c+5BcS
        73PbyrnE2YQHzRTcDdPZNORdBM9Me5CPpQ==
X-Google-Smtp-Source: ABdhPJycuqb08A4/Xgjd7wi9Kxx97mQ7A9NCG2ZhasqGOh5Pk/Zy7RJhke1Ri1dgqeXnIZGFMUZJSg==
X-Received: by 2002:a7b:cb5a:: with SMTP id v26mr9002666wmj.162.1614468007966;
        Sat, 27 Feb 2021 15:20:07 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n6sm1066152wmd.27.2021.02.27.15.20.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Feb 2021 15:20:07 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: gethostbyname.3: Use internally consistent continuation indents in
 SYNOPSIS
Message-ID: <2e87f61b-ad14-e349-1332-58c0a6755d02@gmail.com>
Date:   Sun, 28 Feb 2021 00:20:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Did you leave gethostbyaddr(3) untouched on purpose?  I guess not :)

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
