Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95B087E0F11
	for <lists+linux-man@lfdr.de>; Sat,  4 Nov 2023 12:28:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231741AbjKDL1u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Nov 2023 07:27:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjKDL1u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Nov 2023 07:27:50 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E666C191
        for <linux-man@vger.kernel.org>; Sat,  4 Nov 2023 04:27:46 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40859dee28cso22042195e9.0
        for <linux-man@vger.kernel.org>; Sat, 04 Nov 2023 04:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699097265; x=1699702065; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zp2ERJs4pfoNddW2k4nYL9uD5cwJnMigZIejvgIei5E=;
        b=CSjGrTrv0FrzTEBwFYzF/L3EQlzJTVUsDbo4KIliYGzY0kYlyF1wQEMRp+3M1X+/SM
         ISt7TZDixikgQiXA4qCMbGbh6HQF1TCCMERKGn7ImFuUgp4B58zhW2VPGx+Q4797PbC8
         Mvas9S1fjJ6Vr5yZ7UrJlLGA5J9ymc8UaZiO8dfR0250A0KXFAr17soPsJXKwUMZRhxg
         VnKR01dl2uMD+4EpUOePUiL46G0N+epCCjkkxnDiTSE5WayAzLNsY0+YzZYYRxhfnx4s
         NUiXd+f01MYlqD5rOFpX+/mEFBSGgbXMDuhzTXxPWjexWXZCn+2ZoY/Q50wsXUn3oWUc
         fruA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699097265; x=1699702065;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Zp2ERJs4pfoNddW2k4nYL9uD5cwJnMigZIejvgIei5E=;
        b=vtJ72S2X7zQMA1dct523RBHqhT3icTo0TZ5HvWa99C8BCYtmGqDRJSP9t28dXVVQG1
         TKz8mEgPLa4ZJCasHU9vdE0hXuxDR7FbGirswaOVMEKgcbrtlyJkXrGzLiE2JvYp87tH
         vuWM7tnsBK/RQGHUPZMzoAa9g5zqFy/7gV5Sg0a+t+OG9k1GSAN44wuxY/gwmmKI2qgN
         hpqPorE1GDRHGYLEUJh51A3gzhretJGv7OlMQjpeLJPNxjIfILUdFbtfHcXtfhSJv+2A
         lsSYfwma6qPDIHywqAsstDnxhCcl1Ra9MjJnuymBxbT+qyYJfXymhaj2dUKQY6sQcWUF
         35EA==
X-Gm-Message-State: AOJu0YzNEj9q9CjxMkZsdpw0zr94h9VIdpJBNeMmHXLXzpw1lVj5Extw
        0hjRK1ua//lNTmImp97/hubCpAu4uN9RUFqVV+U=
X-Google-Smtp-Source: AGHT+IEjO+ZrLdZqZYO3KXy544Rof6AgQPvNvXcvLbn3T1lUIsVMRAmL9kryq9sZBjWjU9c5oPppUw==
X-Received: by 2002:a05:600c:1395:b0:409:79df:7f9c with SMTP id u21-20020a05600c139500b0040979df7f9cmr1173282wmf.36.1699097265299;
        Sat, 04 Nov 2023 04:27:45 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id gw21-20020a05600c851500b004064741f855sm5333891wmb.47.2023.11.04.04.27.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Nov 2023 04:27:45 -0700 (PDT)
Message-ID: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
Date:   Sat, 4 Nov 2023 11:27:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Subject: strncpy clarify result may not be null terminated
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello
I have a suggestion for strncpy.

C23 draft states this caveat for strncpy. 

"373) Thus, if there is no null character in the first n characters of the array pointed to by s2, the result will not be null-
terminated."


https://man7.org/linux/man-pages/man3/strncpy.3.html

"If the destination buffer, limited by its size, isn't large
enough to hold the copy, the resulting character sequence is
truncated. "

How about clarifying this as:


"If the destination buffer, limited by its size, isn't large
enough to hold the copy, the resulting character sequence is
truncated; where there is no null terminating byte in the first n
characters the result will not be null terminated. "

Kind regards, Jonny
