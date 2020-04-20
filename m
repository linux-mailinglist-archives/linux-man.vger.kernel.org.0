Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79A1A1B03D9
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726006AbgDTIFn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:05:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725896AbgDTIFn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:05:43 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DD4AC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:05:43 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id r26so10247184wmh.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+h+FV8azqwpX4zWFJ8mQhnBgqbzbhh6+rN2UPgXovlg=;
        b=cr1yY9wjCUHotAu4CbLiYUqhKlGhCycPoSdCy5mtbxXKA4uZ5oL/EG2geW4gQfsICx
         nalvbupIur+bXXUg+sSqdUxWXglaB+YSyz5LxSrOu3b0a2qGZ+ueV9W6jP75dQLZjyg8
         qBQfVPbWGSLeft9pjAJvxTJwfmn/Dyz29NdRHy2yRbtWsWhF3fwKFjzAZRykse+4iZR9
         +d7BMUd6ymcPodOopwNex9saQDDvXf8TzxyMOXFaGyzSbiGF9xa3P5xWb4pTay34SLeq
         TTmFUrP/oJxxcb7IXqYcEXPysUTOPkh0trLG20ae/sB40XHk3xdO32EwAityb3MGE1bJ
         4PDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+h+FV8azqwpX4zWFJ8mQhnBgqbzbhh6+rN2UPgXovlg=;
        b=KQBLbx4c+kIS0etJjkbu5NilSe9Cf9COdfhu1y+HbfOLrUdFcn8nWXHtkGrK48Q6Mc
         28N3d+ueuPcz3KUmnkiBsQYPHDb5T7IKPM4Y/hFEvXx5Fx70VBm6v8C7tnThhdqq6fFb
         ot0EVgnGOggJXHVbPg16a9CGkGnJxic36gPlnxub1CCkhqHR1ziXeYkWYwU7hhN0SD3+
         0OZEqQXO3fe0k25BT0rpfT/NNETvV9cr3K5Ce77S/lgshHuODChg8Wiii6JSYrGidSeG
         RAa+qrzAPB8KoVKzenqMQdT5Ac2oxiYef7bk+VDZXEuZWPPGfAf30Zw93I7+Q4lXJCF/
         DMdQ==
X-Gm-Message-State: AGi0PuYRJ7xgRN1eYyWqRH/LpsPXiCGE6DaWRJvuNdq96+br1XTta8nL
        qwBtLq1lesUr8AWua9QgXxY5SU+b
X-Google-Smtp-Source: APiQypJa+40HzSu/WLnp53aVywu10xhwDZbdrGHJo62mnVCp6GsVxvqSBqBahaVnqO21BZzDKa0Hsg==
X-Received: by 2002:a7b:c931:: with SMTP id h17mr17519521wml.105.1587369941535;
        Mon, 20 Apr 2020 01:05:41 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id u184sm351771wmb.13.2020.04.20.01.05.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:05:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: statfs(2): Typo?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064829.GA32234@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1e34d2ad-dcd8-5182-7379-0c97b076ff6a@gmail.com>
Date:   Mon, 20 Apr 2020 10:05:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064829.GA32234@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> Dear manpages maintainers.
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including manpages) as
> well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometiems this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a convention
> not held up and sometimes we simply do not understand the original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to translate into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. As requested, each
> issue is sent in an unique mail for easier tracking on your side. If
> future reports should use another channel, please let me know.
> 
>  s/node/inode/ ?
> "struct statfs {\n"
> "    __fsword_t f_type;    /* Type of filesystem (see below) */\n"
> "    __fsword_t f_bsize;   /* Optimal transfer block size */\n"
> "    fsblkcnt_t f_blocks;  /* Total data blocks in filesystem */\n"
> "    fsblkcnt_t f_bfree;   /* Free blocks in filesystem */\n"
> "    fsblkcnt_t f_bavail;  /* Free blocks available to\n"
> "                             unprivileged user */\n"
> "    fsfilcnt_t f_files;   /* Total file nodes in filesystem */\n"
> "    fsfilcnt_t f_ffree;   /* Free file nodes in filesystem */\n"
> "    fsid_t     f_fsid;    /* Filesystem ID */\n"
> "    __fsword_t f_namelen; /* Maximum length of filenames */\n"
> "    __fsword_t f_frsize;  /* Fragment size (since Linux 2.6) */\n"
> "    __fsword_t f_flags;   /* Mount flags of filesystem\n"
> "                             (since Linux 2.6.36) */\n"
> "    __fsword_t f_spare[xxx];\n"
> "                    /* Padding bytes reserved for future use */\n"
> "};\n"
> 

Changed as below.

Thanks,

Michael

diff --git a/man2/statfs.2 b/man2/statfs.2
index 276ce2061..a0a64714e 100644
--- a/man2/statfs.2
+++ b/man2/statfs.2
@@ -54,8 +54,8 @@ struct statfs {
     fsblkcnt_t f_bfree;   /* Free blocks in filesystem */
     fsblkcnt_t f_bavail;  /* Free blocks available to
                              unprivileged user */
-    fsfilcnt_t f_files;   /* Total file nodes in filesystem */
-    fsfilcnt_t f_ffree;   /* Free file nodes in filesystem */
+    fsfilcnt_t f_files;   /* Total inodes in filesystem */
+    fsfilcnt_t f_ffree;   /* Free inodes in filesystem */
     fsid_t     f_fsid;    /* Filesystem ID */
     __fsword_t f_namelen; /* Maximum length of filenames */
     __fsword_t f_frsize;  /* Fragment size (since Linux 2.6) */

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
