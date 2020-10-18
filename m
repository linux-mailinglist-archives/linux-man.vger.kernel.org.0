Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94665291793
	for <lists+linux-man@lfdr.de>; Sun, 18 Oct 2020 15:05:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726643AbgJRNFf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Oct 2020 09:05:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725837AbgJRNF3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Oct 2020 09:05:29 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E736C061755
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 06:05:28 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id f21so7703858wml.3
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 06:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GeRWraLytiEsBBP3JfKC5oWfgrYR1t1NebPAKa9X4co=;
        b=juIll0TlfWXlrFMZdk5ZjKF1Zn6phutoT1GNH5DYJ38k0pS2GxRTXfynvx4/NNznMN
         ax6MTPY1pqThUw4QJnbKsLhoD0+pAvW4rx2K5sZt7dKI92xIRhJCfdyS6i8iqsk5MRAA
         spB522R5aDpLEgya27kxMbnlnfBotXL0u0VXBrnEz7TL5UiTByJx+ChxN6cLsUKAwE2g
         wn2UV/ljfuMDuH+c+IYVZjUhABuaW0btlVktU4Jkpx7tML8uBaAKTMey/olG6a6jwmdG
         QQVdHT9Ez2RCWcwx38HAEJVDb+xz/ANQkRrwPrzyB+nGzxKqHlbteexqUwb2i1WauiCB
         i9VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GeRWraLytiEsBBP3JfKC5oWfgrYR1t1NebPAKa9X4co=;
        b=T5ezpaGeeJppihcd3PVuEYS3A2k184l+/4nKOonEJu9NXPZ4dtSh2fdvia3/9e7Vsq
         7Uq0D4dGbM/KEQpV3NrKXNNpUc+Op/5Uvg0Om7smFzeEId9AFjtPUseaIdjcoMU0e+Kr
         0N6uUh+8pT6zsyKnpLQlG2swaCDOnBQo0glpUp6yXJEH98RwY1TfgFB4bj84UbmUaN6T
         fT4m8vWu2b/j+cLfH7Yxu5PqeBuErHPbyl7n4kEFW6XdZv2JrsyWLV9rvlfL/n9ytexx
         olvghpl+8JsL/Nac6oZKUoemH4yMW4lcuUu27Ww4ulQvmgGVShgCVUjqGfb2q7AM3Vey
         N3MQ==
X-Gm-Message-State: AOAM532OMTG6CBf9Q+Xhujp2Q99nfu1M+iGrhS1jueh9adxa+BIITqIB
        DenQd03lfx0/J/v4pACJ5P0=
X-Google-Smtp-Source: ABdhPJzl0v0accLOcznTCM24HxtEJJG9gMdg09rcQMzUxJrbytIdJzuIcUfPxsdDdkyLXiaPcUhopA==
X-Received: by 2002:a1c:6643:: with SMTP id a64mr13400154wmc.142.1603026326803;
        Sun, 18 Oct 2020 06:05:26 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id t13sm12119814wmj.15.2020.10.18.06.05.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 06:05:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Zack Weinberg <zackw@panix.com>
Subject: Re: [PATCH 1/3] system_data_types.7: time_t: Add Versions note
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <7dc0c08b-ebf8-3d79-75c8-7579f537cd48@cs.ucla.edu>
 <78f7baf9-bd40-39d5-bbca-403381ec369a@gmail.com>
 <2b275610-95cb-5d40-158e-3b1d9e7adde0@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3dbfecdc-929f-3f4c-e4e8-420a558eecfb@gmail.com>
Date:   Sun, 18 Oct 2020 15:05:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <2b275610-95cb-5d40-158e-3b1d9e7adde0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>> Alex, I suggest either we drop this patch, or you could reword as
>> something like:
>>
>> "In POSIX.1-2001, the type was specified as being either an integer
>> type or a real-floating type. However, existing implementations
>> used an integer type, and POSIX.1-2008 tightened the specification
>> to reflect this."
>>
>> Thanks,
>>
>> Michael
>>
> 
> Thanks, Paul!
> 
> Michael, I would opt for the simpler: drop the patch.

Okay.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
