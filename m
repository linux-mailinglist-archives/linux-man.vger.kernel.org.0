Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6907B265C40
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:13:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725779AbgIKJNZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:13:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbgIKJNW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:13:22 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0896C061573;
        Fri, 11 Sep 2020 02:13:21 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id e16so10758859wrm.2;
        Fri, 11 Sep 2020 02:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=32Pe8Hxy1VmE8mgdxXLbHKqAfEjCAmJB1EfYH72gp/s=;
        b=QC0pb4H6LVwUILJ224mnkNXhaTZTyfa/aV8Os9M7+lY7pv/6jJh+XUV1u0gIZF3II5
         txrvGloQNgXcJh23uqHaEtGzHobjAOW7Gc4HT6cD6ZYviBRTWUL0dEqr5/W10HCGvpni
         RabsSL+OXXV8AxVpcK4jWoUPW24Ds0E6qU/CGYCHXIsvEb//WlxAn4i+hF/0ecMDezMR
         NwHhn3yV9w0DO5J5p6Vl7VwOQUyCLh3RTdxCPeq5XcZteU9v6/rn5kmHNgNdO95XxPNf
         i1k4JXWSCsC+PjFWuVduXSVHTGmVy3sX/YwGRtk7a9yUsRFcYe/Wxw1lcn6p4NVFjzbP
         a/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=32Pe8Hxy1VmE8mgdxXLbHKqAfEjCAmJB1EfYH72gp/s=;
        b=S7xqO2hQlLjhYi7CYG6SY2X+tpUQX0q8jyKDBeyBDlE5fc9+WYGjA/vliZgNJF/rh9
         poKH6Tn9jauRj6Uf2RulJhe787b3FtnMQtRcWt/33uw50O6ArSDj+yXVUhWAzrBY8wEd
         wOi9L739Mhh+025aJqbzwfAXtwxHTYUtKabPtnDmHpHG1pD+pnKwS+1k1IjolFnFC6+J
         R46eqyZm2UncU7h30R89cIPi417Aw5NnWeDUMSygNcz183kHLI/dHd9WdADKBkaVIED7
         PC6B1G6TE+cD7NYvkmaJBTdkxbgWuBkRfROLIXZ1pRLP99dRaEhsFyhTv3VphHLIqyNZ
         iOrw==
X-Gm-Message-State: AOAM531s+MgHlCxaGlJAFIcXsd23PUK+u0sC+pYyIIijZStIORulEWl2
        rhwVK+EqQ8SqcMMC8FbbC2hv5iRAL3M=
X-Google-Smtp-Source: ABdhPJwOfzaqp3VNZnK5yQVWXFhs7SKYZN14xRQQKKAeax+SNZpS6KzVU0maV9PNd9PK80EHD66I1Q==
X-Received: by 2002:adf:d0cb:: with SMTP id z11mr1022609wrh.192.1599815600324;
        Fri, 11 Sep 2020 02:13:20 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v9sm3260709wru.37.2020.09.11.02.13.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:13:19 -0700 (PDT)
Subject: [PATCH v2 10/24] ioctl_ns.2: Cast to 'unsigned long' rather than
 'long' when printing with "%lx"
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-11-colomar.6.4.3@gmail.com>
 <e17f617a-4ba2-8788-20fa-7c2596d67ec6@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <816259de-c577-55c7-9894-11c088720ea7@gmail.com>
Date:   Fri, 11 Sep 2020 11:13:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <e17f617a-4ba2-8788-20fa-7c2596d67ec6@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-11 09:24, Michael Kerrisk (man-pages) wrote:
> This may be true on Linux, but is not true on other systems.
> For example, on HP-UX, according to one header file I'm
> looking at, the return value is 'long'. >
> These kinds of casts are intended to improve code portability
> across UNIX implementations, so I think they should stay
> (although, I do wonder if they would be even better as casts
> to 'unsigned long')

Fine, then here is the patch with the casts to 'unsigned long'.

Cheers,

Alex

-------------------------------------------------------------
 From c5f644e798ffc5dec0c73f324a26059568865c68 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Fri, 11 Sep 2020 10:51:26 +0200
Subject: [PATCH v2 10/24] ioctl_ns.2: Cast to 'unsigned long' rather 
than 'long'
  when printing with "%lx"

 From the email conversation:

On 2020-09-11 09:24, Michael Kerrisk (man-pages) wrote:
 > Hi Alex,
 >
 > On 9/10/20 11:13 PM, Alejandro Colomar wrote:
 >> Both major(3) and minor(3) return an 'unsigned int',
 >> so there is no need to use a 'long' for printing.
 >> Moreover, it should have been 'unsigned long',
 >> as "%lx" expects an unsigned type.
 >
 > This may be true on Linux, but is not true on other systems.
 > For example, on HP-UX, according to one header file I'm
 > looking at, the return value is 'long'.
 >
 > These kinds of casts are intended to improve code portability
 > across UNIX implementations, so I think they should stay
 > (although, I do wonder if they would be even better as casts
 > to 'unsigned long')
 >
 > Thanks,
 >
 > Michael

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
  man2/ioctl_ns.2 | 6 ++++--
  1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man2/ioctl_ns.2 b/man2/ioctl_ns.2
index 818dde32c..8b8789d1f 100644
--- a/man2/ioctl_ns.2
+++ b/man2/ioctl_ns.2
@@ -317,7 +317,8 @@ main(int argc, char *argv[])
          }
          printf("Device/Inode of owning user namespace is: "
                  "[%lx,%lx] / %ld\en",
-                (long) major(sb.st_dev), (long) minor(sb.st_dev),
+                (unsigned long) major(sb.st_dev),
+                (unsigned long) minor(sb.st_dev),
                  (long) sb.st_ino);

          close(userns_fd);
@@ -346,7 +347,8 @@ main(int argc, char *argv[])
              exit(EXIT_FAILURE);
          }
          printf("Device/Inode of parent namespace is: [%lx,%lx] / %ld\en",
-                (long) major(sb.st_dev), (long) minor(sb.st_dev),
+                (unsigned long) major(sb.st_dev),
+                (unsigned long) minor(sb.st_dev),
                  (long) sb.st_ino);

          close(parent_fd);
-- 
2.28.0
