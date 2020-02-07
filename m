Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A8BC155C0A
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 17:46:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726897AbgBGQqp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 11:46:45 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43088 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726874AbgBGQqp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 11:46:45 -0500
Received: by mail-wr1-f65.google.com with SMTP id z9so3434716wrs.10
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 08:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UElPoy9hCu9wV0um/KEoqE1+lYuIecSvqyULg5goYuE=;
        b=ddx/u58CuoBK+h5+xlUFehSN5EMJftUnW+hwlXaMfq1mKRjvOG9PditDw1hCghrGRg
         vbI5NqifVFXsrKYFhrL8QYX4xDmKrbHXoK+ImTIlgz64armtfMrI3rt8xXbGa0FufRpQ
         +SakCb4ZPWNd2Gf/Edsb0pN280oMXBp7TYg7dGZWNdBkwiyd/ovxQdy3ilPtLcysHPx7
         FJgGNSH7UACoX610eipZFjCbEVz8iDRRtus78ZKxHhytTX41ahohSdz4h2n1pDr/FI7m
         Q1DeN9V/QOwYKqUNu6cNVkO68+MgpYov7BrjeBQjQ1HWRd8fnxqkw0YPcbqkTeoD1swQ
         V7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UElPoy9hCu9wV0um/KEoqE1+lYuIecSvqyULg5goYuE=;
        b=XgAXraICwxnr7KiGuJWuh+i8rpp09HQZSS5Atxy4QbJpnzFmSeYDTFtRQTiuLBH7E6
         dBIjOhC+COyGJPATs0JE2UlnMqsZ7QHE6jSkFhV62Bj2sdmTlxSS3gvCtuMkefYkRnHg
         dITv2hqjJuuq4gytzgQAAFL0sHJZGEKg43wOR96LZrS0QDZGRnw/UJsKqXlWariIdtKR
         na2WiKPpu+QaqeJuFT5XOrxxsO2Fp08gZbhKUSbAHOvMZlp8Ez+9tfalmJQ/OpVEBF6G
         TJoqEvkpkvgwJ+wyhc8Zs9Wkh44pSdRZA1CC9yAa+zHW9gQdoUZOP5f8Wgq+08w1g9LQ
         oKPQ==
X-Gm-Message-State: APjAAAXNNEf395rB82FUvnK14oRD0MbdAED1lrTDO42sKYngkI0KIzCs
        NooGK6pmlNbN6FWx6BVi14Q=
X-Google-Smtp-Source: APXvYqyeAw8NBOsnalPFerP7QA5NdiZ8yiUQd6w2FzIygYk9PZXZ/wmy10fXxe+AGuOiy2rwEpchXA==
X-Received: by 2002:adf:80cb:: with SMTP id 69mr5355383wrl.320.1581094003232;
        Fri, 07 Feb 2020 08:46:43 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id n16sm4028627wro.88.2020.02.07.08.46.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 08:46:42 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, tytso@mit.edu
Subject: Re: [PATCH] open.2: No need for /proc to make an O_TMPFILE file
 permanent
To:     "Joseph C. Sible" <josephcsible@gmail.com>, kilobyte@angband.pl
References: <20180925230929.14449-1-kilobyte@angband.pl>
 <CABpewhFHsm2MaKotzwvmeivviUCXKwP+8ALnKByDRnD990C5Tg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <07c9eeb9-645a-b788-f16d-0e152d25f252@gmail.com>
Date:   Fri, 7 Feb 2020 17:46:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CABpewhFHsm2MaKotzwvmeivviUCXKwP+8ALnKByDRnD990C5Tg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Joseph,

On 9/27/18 3:55 AM, Joseph C. Sible wrote:
> The old code doesn't require any capabilities, but your new code
> requires that the user have CAP_DAC_READ_SEARCH, due to the use of
> AT_EMPTY_PATH with linkat. (I personally think CAP_DAC_READ_SEARCH
> should be unnecessary and that f0cc6ffb should be reverted, but I
> digress.)
> 
> Joseph C. Sible
>
> On Tue, Sep 25, 2018 at 7:13 PM Adam Borowski <kilobyte@angband.pl> wrote:
>>
>> In the example snippet, we already have the fd, thus there's no
>> need to refer to the file by name.  And, /proc/ might be not mounted
>> or not accessible.
>>
>> Noticed-by: Theodore Ts'o <tytso@mit.edu>
>> Signed-off-by: Adam Borowski <kilobyte@angband.pl>
>> ---
>>  man2/open.2 | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/man2/open.2 b/man2/open.2
>> index 5d0ce66d8..1c775b6b3 100644
>> --- a/man2/open.2
>> +++ b/man2/open.2
>> @@ -811,9 +811,7 @@ fd = open("/path/to/dir", O_TMPFILE | O_RDWR,
>>
>>  /* File I/O on 'fd'... */
>>
>> -snprintf(path, PATH_MAX,  "/proc/self/fd/%d", fd);
>> -linkat(AT_FDCWD, path, AT_FDCWD, "/path/for/file",
>> -                        AT_SYMLINK_FOLLOW);
>> +linkat(fd, NULL, AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
>>  .EE
>>  .in
>>  .IP

Thanks for pointing that out. I've applied Adam's patch, and
added a patch noting the alternative (which was previously
shown in the manual page):

diff --git a/man2/open.2 b/man2/open.2
index db09389a1..b47241b22 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -812,6 +812,16 @@ fd = open("/path/to/dir", O_TMPFILE | O_RDWR,
 /* File I/O on 'fd'... */
 
 linkat(fd, NULL, AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
+
+/* If the caller doesn't have the CAP_DAC_READ_SEARCH
+   capability (needed to use AT_EMPTY_PATH with linkat(2)),
+   and there is a proc(5) filesystem mounted, then the
+   linkat(2) call above can be replaced with:
+
+snprintf(path, PATH_MAX,  "/proc/self/fd/%d", fd);
+linkat(AT_FDCWD, path, AT_FDCWD, "/path/for/file",
+                        AT_SYMLINK_FOLLOW);
+*/
 .EE
 .in
 .IP

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
