Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42B8325E144
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 20:01:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725984AbgIDSBQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 14:01:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726293AbgIDSBQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 14:01:16 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BD25C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 11:01:15 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id e11so8009663wme.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 11:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=SgY4s1uTur5yZFgKEsEqzMLo4dAZV4b4Dfam7lk+8Rs=;
        b=R2eRmB2T9GnO+x0JP2G8+DU4oJme4eDH22Ix/FajulAl8GHoNqrlxjajgJhUO4194c
         Z5ozGRZ/4Z4X2ulf66CUBdjLAuaRc9hM03dBxRVMp8uQXkAfYAQK/zfReXftuG/zFV2f
         0sUYH3MrtYsdmsoFgeAHS31BDVx6qY8JjqS3GrCXbiKOVtx45WDF3reYnn3ME6PQX3T6
         rUMPtcqwrX8zkVNOREEqzyT4PrdKHlxhzMoj4iThlXjO0/cGvhK8AENS79yHhsF5Lf6G
         9mOz6EWmLI6w8Ou5ISrkKRHRzDS3nKApuhm+5fYAD5lPFgxrKnniLAoyoZBL631Jmwob
         kWlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=SgY4s1uTur5yZFgKEsEqzMLo4dAZV4b4Dfam7lk+8Rs=;
        b=DTEptmne5Icjq2FL9IqPNUnSBU9eUFFg/mdFuZJkK9e8lJjYaRS6a2QwHeTTUKV0Py
         pg74+vsx591pzBbqr+T2P/9a/kHprKjsY/KWbBNdfXqTYL8F0tmkwFIPBgSA1mbxyN3B
         Zx746IkbIRU+7DLdlCAXnb9zPW+n2ykAAZwaH0DSOQwuD4UGSw15L79ZqZKlzVmwMUGa
         uY1rLAg5n4fv1fqB85lXxr+YxeJHjpUkS0F02N7xe7ii5A5eg71M6oAcqWW8RyJjUx3n
         u0h6mhfkYXhm3ZucJlaXt3SBkgTHnIHsvwRLrtNp0lT52VsOMc3ejvBAlPeIcBz7QNx9
         PNvQ==
X-Gm-Message-State: AOAM530n12cHTRSpuKrAdLqiipyRWpFUBJtU8KuvmhDiuGr40Us0qZ9i
        Bl68TgU1cH0zKIiinfQGau5PNQ==
X-Google-Smtp-Source: ABdhPJxRHI9i98Sl3GjSLw2+BwOG3XAsut+uu67QvYrdgKMCIjS/m+DTcjYp4e8Jd1xjpVc2gdrZnA==
X-Received: by 2002:a1c:3d44:: with SMTP id k65mr8335278wma.132.1599242473855;
        Fri, 04 Sep 2020 11:01:13 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id 70sm13979865wme.15.2020.09.04.11.01.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 11:01:13 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: strlen
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
Date:   Fri, 4 Sep 2020 19:01:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello

https://man7.org/linux/man-pages/man3/strlen.3.html

Is it possible to clarify :-

* glibc will SIGSEGV if 's' is NULL
* there are no ERROR returns

Jonny
