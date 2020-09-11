Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 935F8265C97
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:35:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725809AbgIKJfA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:35:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725766AbgIKJe7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:34:59 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6E02C061573;
        Fri, 11 Sep 2020 02:34:57 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id g4so10805150wrs.5;
        Fri, 11 Sep 2020 02:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=o0lvsvmhHomaFeuUSC9V+WuHMpnFn37vWqOj83pYmxM=;
        b=OvR4HVjnY7YWq/ZH6LYRjweBtkuU8RILDosaNj9LycHEbgECZHblqpqtRMHZNGOdw6
         GbyZj59NmF3gxX2Fm9SxM02WHzpqBG2rbX71Xfwh6pbGdWxMq65Hde7FDuq/B4vdZH6F
         lNSlhZyNQ2azLRpUbwv/ApRNWpT09tgDmOMAWbwhhwyLm+Dm8BzGBUBl5s/rGNrMyE7d
         F7ckQDDh4wNtM/d2OyjmASjP3sqAv+J1b8MR3TNWiGbztUIkLgp3hzzgG7qvZSRFQGJs
         gSmJwBNUE3r/5hWdKsBI+Gf8X+cghMjN2PgntQznz1tH68q+HBnj/39rK/7KEFpqR9KZ
         5CCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=o0lvsvmhHomaFeuUSC9V+WuHMpnFn37vWqOj83pYmxM=;
        b=DnJ5cuj3RcvPJirPodFnrDNiZihw9YANKmbmNddk1f8uN8RYHXOF11NYF0JaiM4PIX
         O8Dh+9licBtM814CUa/P+zMAjWUL5ZMBqRuw5BuqV0n5aD5iu4Lyvv4z+tHiYh73U7B/
         awkcjnY9P9lrmN/GQUu0OsDG0uE/y2DwAhTpQsNq2NZQYXNMRdJ9wkEpwP4Lgk4pXlIG
         5mZ1RAD+fT7SRyrdLDflMQmmBHKf9P7DeaJVA68aas3UCevOWwzcd5lr3mA//WZ6+/Tt
         xXEpFXMLIvrUgLZWWTkpVXfQp2FyvWmca/qmPHKvtDu74enqRpfasvXHHOqohNmn5HPb
         6C2w==
X-Gm-Message-State: AOAM531wU7VrjcTFC975bI5ma3wh6oikVnegFFe1WQ0WmDFqRmaYjwb6
        OcIdjhNbzZZgQQLm+Cgt1LwfBL/TJB0=
X-Google-Smtp-Source: ABdhPJzdaKDMiO3skd7BhvU3OUbSVcz+XsaE7AtKTs7IFqa7U4/L5wgxxWbXrOzuYd1nug3sNpl1Zg==
X-Received: by 2002:a05:6000:1083:: with SMTP id y3mr1101212wrw.405.1599816895718;
        Fri, 11 Sep 2020 02:34:55 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id y5sm3157208wmg.21.2020.09.11.02.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:34:55 -0700 (PDT)
Subject: [PATCH v3 11/24] stat.2: wsfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-12-colomar.6.4.3@gmail.com>
 <9e397d55-34bd-3df7-57cc-e5726198bb97@gmail.com>
 <11344e3e-1c0b-b61a-4794-807714b1c09d@gmail.com>
 <f4b14c0d-248d-669f-b748-3890de7bb73a@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <81da8e01-d0bf-958a-3533-aad25f75bbe4@gmail.com>
Date:   Fri, 11 Sep 2020 11:34:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f4b14c0d-248d-669f-b748-3890de7bb73a@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi Michael,

On 2020-09-11 11:19, Michael Kerrisk (man-pages) wrote:
> On 9/11/20 11:16 AM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> On 2020-09-11 09:25, Michael Kerrisk (man-pages) wrote:
>>> See my reply to patch 10/24.
>>
>> As with 10/24, here's the new version.
> 
> Thanks, Alex. Applied.
> 
> Cheers,
> 
> Michael

I accidentally used a tab instead of spaces in my last commit.
This fixes that by using only spaces.

Please apply this patch on top of (already applied) v2 11/24.

Thanks,

Alex
----------------------------------------------------------------------
 From daad53ccc36a75a0a9928e0807de38925b9b1433 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Fri, 11 Sep 2020 11:29:40 +0200
Subject: [PATCH v3 11/24] stat.2: wsfix

I accidentally used a tab instead of spaces in my last commit.
This fixes that by using only spaces.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
  man2/stat.2 | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/stat.2 b/man2/stat.2
index 08af24c56..7e5417480 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -665,7 +665,7 @@ main(int argc, char *argv[])
      }

      printf("ID of containing device:  [%lx,%lx]\en",
-	    (unsigned long) major(sb.st_dev),
+            (unsigned long) major(sb.st_dev),
              (unsigned long) minor(sb.st_dev));

      printf("File type:                ");
-- 
2.28.0

