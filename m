Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C64B4342F9F
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 22:04:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229840AbhCTVDl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 17:03:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbhCTVDS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 17:03:18 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20DA7C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 14:03:17 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id j7so12655822wrd.1
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 14:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=hbucdIrToPbjd9AgYBm1t80FZ1a3m1bykkR/0/MoIlU=;
        b=i87xkHZT8bhslCJswIehDuhSSQcf9cqIWbpNpCyYEo6r0I/H0uhJ2Tn4O0o/il75+O
         8zKeJIYqB2btt9h+csBsbmR5ube7deHbsfG58M1WWmg7EtkSif7QcWZnhw7CxSZBftGr
         zB+J1QCgYPDi/1kcsEOEqs9W94b86jDpm6RLM6cFVo2r/MoblCLw4xufxdypASgJ7ern
         cm5cIlQaDCEc9OwY/2pDHJVCcEKETs48uYoPo93vQRR6y2Upb1B+er2phs2yrFrJo/gf
         HDND6RffWfxG6lLQ+9pHNfjyEsMi+3AmsIapTylW0PWD2aZ8VC543WPIX8+EYs9rQ1e7
         D1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=hbucdIrToPbjd9AgYBm1t80FZ1a3m1bykkR/0/MoIlU=;
        b=p63a6Ls6agsWYMYSKcyUiRYA6TBGe3D6aFBLsOr30RYJY3iz4WbMgepesLPfOQ8ssw
         yoO5ir1yVpB7prnDDrVUo/9bc8lvn6GjhaiLn+ZfAhmhgYbRmDB0oIaKMK9fQUXv48S9
         aAxpqrZlZbyQx/i0VHvsiK8hfH/QU4QBJz4+5WjNYjqydroGqujke76jV0xoQ4XYZCfS
         Q9HXquUDz9nS+MiyZWtbDhY3N59PG23udp4Bitt2Pi7Qe2BLn4dF1Y8byQx+rBuB1Mit
         T4B14lCB+zRulIal5EnF17iiVwFwp+rA/AmkQm/PokQaiosFuBO87jvAcxrjzalKj4ne
         aUag==
X-Gm-Message-State: AOAM5327dbOUYjX2WwOxRq7vXF4cfLLkkEhvjV0jUtCg0qX42GZmGRAh
        WFxdqUFRB+WfWzu6BFKJKPdiaFeHkKQ=
X-Google-Smtp-Source: ABdhPJzDWqaU4FDfJOsp08qAVVYlzSVvew+MlHbNohDRmmG04GXJ+KkDfLW7/BlB2glr/rB2QIGCow==
X-Received: by 2002:adf:e4c7:: with SMTP id v7mr10808551wrm.245.1616274195682;
        Sat, 20 Mar 2021 14:03:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v9sm14730543wrn.86.2021.03.20.14.03.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Mar 2021 14:03:15 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Makefile: Use standard variables and locations
Message-ID: <b4cf925a-ac73-33bd-a6eb-514c69e82d51@gmail.com>
Date:   Sat, 20 Mar 2021 22:03:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

There are a few points I think we should fix in the Makefile:

- Use standard variables:
	* mandir (instead of MANDIR)
	* htmldir (instead of HTDIR)
	(see
<https://www.gnu.org/software/make/manual/html_node/Directory-Variables.html>)

- Use standard targets:
	* separate html into html and install-html
	* installdirs (instead of having 'mkdir -p'/'install -d' embedded in
targets)
	(see
<https://www.gnu.org/software/make/manual/html_node/Standard-Targets.html#Standard-Targets>)

- '?=' is not needed, I think.  When a user defines a variable in the
command line, that overwrites any definition in the Makefile.

- Is '|| exit $$?' really needed?  AFAIK, make exits on error.  Maybe
there's a corner case that make doesn't handle well and exit does,
though.  I don't know.

- Use $(INSTALL_DATA) instead of using install directly.

- Specify SHELL = /bin/sh


Any thoughts?

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
