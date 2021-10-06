Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09B13424692
	for <lists+linux-man@lfdr.de>; Wed,  6 Oct 2021 21:14:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239299AbhJFTQo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Oct 2021 15:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239279AbhJFTQo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Oct 2021 15:16:44 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D207C061753;
        Wed,  6 Oct 2021 12:14:51 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id k7so11763512wrd.13;
        Wed, 06 Oct 2021 12:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=xg6x/7D3h5mhfbuUrsFbOT2lnBjaEjgZ8M7w30SjBlM=;
        b=MUuzTOasB9L+Vjg0DSdRATwsVH8PMBxFBtSB14mkc9yAnMM6J6/KBY9YHfI1c2Bxfh
         QS2W9M/896NWUgAhzWgrZ9oNlVdkv/hMGKQz4M4Rz7orTDlfswI4oTH0/80DbhK59usG
         r26g9EwjAIBSYAn/pv0/6xMMl9UtuR+Sqg2J0F8GgVHw3h1+9SkgVxkaRC9Gi4o8ySev
         d+kXGTULBVnJ8NbxwSv+IEODvVL3LtqrlYISqcP/cxVj7qum7i+5rNI8FBzOrdCEeeJT
         pidEhBpfjU0HZHawcxiGcUKqlRnmOr4hx0UOkW4RtUB4Xfbaau65AiUI1gWAfzam/lKb
         MQFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=xg6x/7D3h5mhfbuUrsFbOT2lnBjaEjgZ8M7w30SjBlM=;
        b=XFBVHtR88Xq5lPQVnYQSeuc/dGhJh9x+iGd8ZQK0/KUS/dbLeuufuSk9fFYditTJL9
         0aa3zUhtDPBQlQJ83uFc8cFgIcZJnQTczZSYAjsSjalw4kgKxGzW4xPwquHmOAgzYcVX
         f0cXqCWNaGDlgVFR4EPN4iHO3vKDIfS9u+1D+IiEURL3WWULHRJTsbQlffF2x4Y88XCo
         zFIWH+3jeT06RklCTR92QO+DN33lu4ySUCo64M66zbirgiVf2kM6UmNxfFp0xSfVerya
         ItXDr6SEIvMGUUIo77wMWzuOFTmg5IJrQ0MzoFhp62OlV4SGI6lvqmMcFOjxlBcXEUPD
         TmaQ==
X-Gm-Message-State: AOAM533EVe9SCWS3knLaolb7TKumi0D4jyT7G4RAo7YycWGKV8Uwyi6g
        c4Ptatjwr3qX3CDr9MY36xD0TE340H8=
X-Google-Smtp-Source: ABdhPJxNtynREXIROgl8PJqiUiDjSr7dkvbBsqQdgBENI2XdmNkf5gwlvh+FcmRELeC+mxoCwlFCyQ==
X-Received: by 2002:a5d:6390:: with SMTP id p16mr24041349wru.54.1633547689955;
        Wed, 06 Oct 2021 12:14:49 -0700 (PDT)
Received: from [10.8.0.18] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z79sm6264965wmc.17.2021.10.06.12.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 12:14:49 -0700 (PDT)
To:     linux-man <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Libc-alpha <libc-alpha@sourceware.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: outb(2) Text regarding optimizations
Message-ID: <3db43b50-a0a5-ed0e-4def-e44f845f8e89@gmail.com>
Date:   Wed, 6 Oct 2021 21:14:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

outb(2) says that users of these functions should optimize to avoid 
having unresolved references at link time.

The text is:

[
        They  are  primarily  designed for internal kernel use, but
        can be used from user space.

        You must compile with -O or -O2 or similar.  The  functions
        are  defined  as inline macros, and will not be substituted
        in without optimization enabled, causing unresolved  refer‐
        ences at link time.
]

First of all, "inline macros" already is a misnomer.  They are 'static 
inline' functions.  But 'static inline' functions _never_ cause 
unresolved references, because they are 'static', so the function code 
is added to each translation unit as an anonymous function (which is a 
big problem of static inline: it may bloat code by repeating code in 
translation units, C99 inline being preferable).

So is this an incorrect advice (maybe because of a veeery old 
implementation)?  (I couldn't find any relevant implementation changes 
in the glibc git history.)

If there is any reason I'm missing (I don't understand the assembly 
calls that these functions call, so maybe) that would cause these 
functions to actually require optimization, I'd say it's a bug, and a 
better solution would be to add the attribute 
__attribute__((__always_inline__)) to the functions, so that they will 
_always_ be inlined, no matter what optimization level the user chooses. 
  Right?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
