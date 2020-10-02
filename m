Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B961281C11
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 21:32:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387688AbgJBTct (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 15:32:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726224AbgJBTct (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 15:32:49 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D537EC0613D0;
        Fri,  2 Oct 2020 12:32:48 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k15so2975608wrn.10;
        Fri, 02 Oct 2020 12:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9WAVTTZWVXFPkge+R2T9ftB7ZAz6PRmo0VTImnGOdmU=;
        b=dyV/Yas9vfNvx0fENJZp1fcbzGE4MkQ8GcLbGLFaIYE/Un7+libFFHK0+7HRV96BZ6
         hhGquUP8gI0gSqcYWOPopkzYrMNVOcN5cduVytc2t6LDnC2YJLWmmyUCzDF0GNMQurAc
         V/hAowH79P+gemS9pBxPKYUsLzOV2L2UXGdEK6hw1BdAV6cTkESj2m8h8XooCzm+wj/Z
         soS9wTAMTPJ/evVlImQ1JyOG/0eeOaslzrFD3iyhM4WgadyOtKxBgeKB9krl8c4kNnbJ
         kA/VP6O6OG6PpNrIukSoT14qqv0VMwwcX0hdUogUFrIpsKTo0+Dsoo/LjSS6jUNd1lhQ
         OBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9WAVTTZWVXFPkge+R2T9ftB7ZAz6PRmo0VTImnGOdmU=;
        b=Safkwf7/8XHZ4SnQn0Q5HbmwcSvLokO8Ibni0gngaRGufXnXiST8aija9nCBldoh6E
         wTleEcmBqIZ0yo01vUKGC9F23Xlu7NySDDVIABv9VexbpYGvX6SXo9Jm6JJXSHA72bUS
         9U61bi1sk5FC8PFAw5C4oWZUOKEqWaDg+cXt3twX1EbV73JkYZFxT+QjLVkSIw/vGFsk
         NjlGepwGO4k1fjNg+DXVyg1IjQzfKWul/LkB0HugnZodwMz5pBEJz1NhqUzYLha5Dmtd
         sEdXI7soPmZFVpVEGz6E6aHHlQNuNhck9rqzOn1sQJCnMYhFSxs3JePHhqLgeyLa/maW
         JLig==
X-Gm-Message-State: AOAM532eBu70tYkKGYU31TskNJxRnvQcJ2i3Tfe2lLcCb7rcuUKb9udg
        o353OvH8B7X7H4TrqEGrwZ6Fv4AYC1Y=
X-Google-Smtp-Source: ABdhPJyfBT9pQo+SXX/SVRxX/51ZMMtCA1RJUScUOWnhvtrYzg/bRzDFelbWIbR8mn6HmKSq2i0djg==
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr4972404wrp.217.1601667167512;
        Fri, 02 Oct 2020 12:32:47 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id e19sm3384230wme.2.2020.10.02.12.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 12:32:46 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, eggert@cs.ucla.edu,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
Subject: [PATCH v5 0/2] Document 'void *'
Date:   Fri,  2 Oct 2020 21:28:13 +0200
Message-Id: <20201002192814.14113-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002151419.32053-1-colomar.6.4.3@gmail.com>
References: <20201002151419.32053-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Here I added a wfix fixing some wording issues and a few typos
spotted by Paul and Jonathan in the (many) threads.
As previously, it is squashed into a single commit.


Thanks again for those who reviewed the patch!

BTW, for those who don't have a local repo of the man-pages,
below you can see a rendered version of the patch.

Thanks,

Alex

[[
void *
      According  to  the  C language standard, a pointer to any object
      type may be converted to a pointer to void and back.  POSIX fur-
      ther requires that any pointer, including pointers to functions,
      may be converted to a pointer to void and back.

      Conversions from and to any other pointer type are done  implic-
      itly,  not  requiring casts at all.  Note that this feature pre-
      vents any kind of type checking: the programmer should be  care-
      ful not to convert a void * value to a type incompatible to that
      of the underlying data, because that would result  in  undefined
      behavior.

      This  type  is useful in function parameters and return value to
      allow passing values of any type.  The function  will  typically
      use  some  mechanism  to  know  the  real type of the data being
      passed via a pointer to void.

      A value of this type can't be dereferenced, as it would  give  a
      value  of  type  void, which is not possible.  Likewise, pointer
      arithmetic is not possible with this type.  However, in  GNU  C,
      pointer  arithmetic  is allowed as an extension to the standard;
      this is done by treating the size of a void or of a function  as
      1.  A consequence of this is that sizeof is also allowed on void
      and on function types, and returns 1.

      The conversion specifier for void * for the  printf(3)  and  the
      scanf(3) families of functions is p.

      Versions: The POSIX requirement about compatibility between void
      * and function pointers was added in POSIX.1-2008 Technical Cor-
      rigendum 1 (2013).

      Conforming to: C99 and later; POSIX.1-2001 and later.

      See also: malloc(3), memcmp(3), memcpy(3), memset(3)

      See also the intptr_t and uintptr_t types in this page.
]]


Alejandro Colomar (2):
  system_data_types.7: Add 'void *'
  void.3: New link to system_data_types(7)

 man3/void.3              |  1 +
 man7/system_data_types.7 | 76 ++++++++++++++++++++++++++++++++++++++--
 2 files changed, 75 insertions(+), 2 deletions(-)
 create mode 100644 man3/void.3

-- 
2.28.0

