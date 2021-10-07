Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B8A3425E7D
	for <lists+linux-man@lfdr.de>; Thu,  7 Oct 2021 23:17:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234065AbhJGVTe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Oct 2021 17:19:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232200AbhJGVTe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Oct 2021 17:19:34 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C966BC061570
        for <linux-man@vger.kernel.org>; Thu,  7 Oct 2021 14:17:39 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id u18so23157714wrg.5
        for <linux-man@vger.kernel.org>; Thu, 07 Oct 2021 14:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0T8sKKnBv6+Y76yLpubZGMjzycIwVWGmKAhG8ixu8M0=;
        b=E34Sf+39Mps7hBJbBOGDJ0lCwgs0TOChKCxZkYs5RPysu4vW1QiIagbcd4lIShj00q
         W3tWlgquMV9XAer3gNMzLWobMhCUUDBpxi9Kot5w8Eq6FpmwywBFM23p7+rF2/aVZYiE
         IKJPbuOjX7xXBx+00jFc+CqL9aqUC/GBSBsiyz1WCGR8eF0bq3SolwOLJDDAQOkj5UhH
         Xr3J+D+B0IAG+SRHWjat+iDJjEJ5+DKUOkaoHT7X/WqmKLxpzZi86bfDACExV3dTRiKf
         pgCGEw99+Q98PbkUC0jkXCIF3mQiC1FFiLeh9eVOj2MFZ6IXwNAWSancCYiyHhcsp8D5
         8PFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0T8sKKnBv6+Y76yLpubZGMjzycIwVWGmKAhG8ixu8M0=;
        b=2GSSOYrR3EGTbYyQx1fRnDI9xuh8X/LaXRuiCp8px0gqVNk410D4z4tp2KDjkU6Bvh
         SeM8zfU7w+ZzOVqrQtQ0s9yfTGzLHzVv92L+zpZAyY3iO4wyycdJgCEpZruLKOQ3UCA+
         4oSHjf6G/B45lQ4GK70Rug+wzqi+UipXcUiqdzsY1uQ9JsZnadmYt/fow7Oioea/uXmB
         fTHflTyOI5dXMRioArYyguCuuM4+1S1arl5go9G7DA4uby4xrgKX8RXMa+pR1KNu9x0O
         1FxoNU26EQz+QmkzY7R4Z2lmF29bgzE/5e/XPedBFrVTaZWWzH8+77FK1o0nl31MTMJ6
         yqUg==
X-Gm-Message-State: AOAM530OnJUQh6wYPJRRb03UMWPt1sZ5rhWezkwrgT5RGuqKnajoc5Sc
        7e7Dox4Uirw+ERvYdRxWDDAUwIk/EYk=
X-Google-Smtp-Source: ABdhPJzxIlY4Rm8I5IORsIGxCimnN0t/hqbD2zcbaNtD4t2WeSOxPKD0/EY8JV6HxdFg1XMh5/K4BQ==
X-Received: by 2002:a5d:4eca:: with SMTP id s10mr1416400wrv.290.1633641458430;
        Thu, 07 Oct 2021 14:17:38 -0700 (PDT)
Received: from [10.8.0.18] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z20sm463338wmi.42.2021.10.07.14.17.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Oct 2021 14:17:37 -0700 (PDT)
Subject: Re: Spelling Mistake msgctl Man Page
To:     Jayprakash Ray <r.jay3283@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <CALd6_3GMcr=nBo4YRmD63Urmy0=g52S5yd0CWzmHGhY3qTxySQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ed1df977-7d8d-d46f-0493-f77c8ae58cce@gmail.com>
Date:   Thu, 7 Oct 2021 23:17:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CALd6_3GMcr=nBo4YRmD63Urmy0=g52S5yd0CWzmHGhY3qTxySQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jayprakash,

On 10/7/21 4:42 PM, Jayprakash Ray wrote:
> Hi Team,
> If I am not mistaken, The highlighted text in the below image should be 
> /*msqid_ds* . /

Yep!  I fixed it with the following patch.

Thanks,

Alex


---
     msgctl.2: tfix

     Reported-by: Jayprakash Ray <r.jay3283@gmail.com>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man2/msgctl.2 b/man2/msgctl.2
index 72598dd4c..670a23399 100644
--- a/man2/msgctl.2
+++ b/man2/msgctl.2
@@ -73,7 +73,7 @@ struct msqid_ds {
  .in
  .PP
  The fields of the
-.I msgid_ds
+.I msqid_ds
  structure are as follows:
  .TP 11




-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
