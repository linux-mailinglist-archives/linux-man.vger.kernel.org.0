Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 074683BAA07
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 20:40:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbhGCSna (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 14:43:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhGCSn3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 14:43:29 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2D5AC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 11:40:55 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id l8so16623714wry.13
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 11:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=vgCC+StzWbAfOlL/XWXfbQwjqNLNSt8uRorBn+ZKFOs=;
        b=FCityDVH2BjoFkjtXIymD92wOx/ou0It9nOOdiQXzPjb1uF3up3LZirbuL9xcIOR5E
         sjNhxNY1VIl68DskhnZdwyXkAfrTBDGCg/FYcZFPH4B7qH9oUEGFdislMi1/mr1dM5cb
         jsjAMRXVDO9eRcMN4dpD8lbw4Ye5B3GOs1gKChS7I3PXQu9YOomL+z/na4MrduUBqp+y
         o5aMbL/fZzcjPVkX//JMnLJPTQBttkBAcnOo/ljihlfHcZoaTB2oNosShWvCOvozzt3Z
         kzV72Nc1J8V7gpgoC7fKYoDN0JPCXHA589UzKrYgIBjo/VQWYtY9lec3TotNeAh7NWPx
         ZT5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vgCC+StzWbAfOlL/XWXfbQwjqNLNSt8uRorBn+ZKFOs=;
        b=d5wTwiTTVfgYizcDTQZFR84IV9dj6A0T/dcFgjBD7ylEjqUUKzQd2zzSTqR7BeNdnC
         B/IOHOKCiAa3zcVOucw+X/7iJ68nTkFZ9vhJdwYt7TQCavjArP4i1E66GPamwf09ED+r
         ciqOdVcx7XPSzOVLIuKh6s/il2V0oltx6Ccg9/PWNcDZaqROlXEwkVxCYDqQ6XLmKPyj
         6tRyT6D/QaffMN0ESfcJfpwyB1PHI+HmTGyS/aNNduilCHtqwGmTCer843WNiWKN+5AA
         qJY/sMo9ZDfn7EHWf3OKQBOpZ3g07dhYKjMgDbXc3UseItFrSEne3GuytjcLvgZAQdmu
         M7Xg==
X-Gm-Message-State: AOAM530EiyJctf+F7CotH9BibNV4VXDwiojmX/Oy8IdI65gsqFdQWqfT
        l4sMk6PedhTUW4gjsXByXZ8=
X-Google-Smtp-Source: ABdhPJzOUfGik7IA4yHugp4Wmb/F/WkbkGM3H+JfDHsA0esPQ0hKoOe/etUUHkQnNTocA3P34bE6LQ==
X-Received: by 2002:a5d:52c1:: with SMTP id r1mr6498341wrv.294.1625337654406;
        Sat, 03 Jul 2021 11:40:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t17sm6783235wmi.47.2021.07.03.11.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 11:40:54 -0700 (PDT)
Subject: Re: [patch] Change multiple occurrences of "char **argv" to "char
 *argv[]" to remain consistent with the vast majority of manual pages.
To:     Thomas Voss <thomasavoss@protonmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <dQfiruW0nMqdV5dny28jYwxkt2uPa82znT6stDqJVTAUWhhgQCpp7oPeqlsVXhZUs8ZBn4-qgURe7lIXHxJbCCn34UKVD-StlJ8N8QV765M=@protonmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <821eb562-51e8-040b-f541-dde444e39653@gmail.com>
Date:   Sat, 3 Jul 2021 20:40:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <dQfiruW0nMqdV5dny28jYwxkt2uPa82znT6stDqJVTAUWhhgQCpp7oPeqlsVXhZUs8ZBn4-qgURe7lIXHxJbCCn34UKVD-StlJ8N8QV765M=@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Thomas,

On 6/24/21 7:55 PM, Thomas Voss wrote:
> sed -i s/int argc, char \*\*argv/int argc, char \*argv\[\]/ man*/*

Thanks for the script.  Patch applied (and added a signed-off-by line in
your name).

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
