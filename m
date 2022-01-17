Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AACF49115B
	for <lists+linux-man@lfdr.de>; Mon, 17 Jan 2022 22:40:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235809AbiAQVk2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Jan 2022 16:40:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233505AbiAQVk2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Jan 2022 16:40:28 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11BFDC061574
        for <linux-man@vger.kernel.org>; Mon, 17 Jan 2022 13:40:28 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id p1-20020a1c7401000000b00345c2d068bdso975559wmc.3
        for <linux-man@vger.kernel.org>; Mon, 17 Jan 2022 13:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=euro-linux.com; s=google;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=C0VQ/S3nVn2TnnR6QZ7m2xohiymrgqvwzS6UPa/ZYQ4g6A5iiyacY8dSaHQGxOiVC2
         cMFPyR7uATTVdM27pTahDZTXqSg2OL9saOC4iDTk1UYSV9W6oJtm9gyjUWTENCVHkrpr
         sys3QjkZup6Xsojt6dy2XXxFVXsm2XpvpWDOSqDTkJDnwZ7qF/BOBbeD6McS5QuWvtZK
         VHi/1uxBAB6NFGJfahBeW6j3MMVoqp8kx4vaiEcf5icvV4snIEZ2X5Uo9VcsKeSL6ZGg
         +9xJaH+FT8WpFZ7N2ahRkMkhN9Fm96w2Ih2S18g2Iz/n7N1JawTH6u5iG18yD7D54kB9
         qTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=4vBOwT+BfYiGHXMF1/Y8wPnwdJgaeqly/pxndNPJw/GtbD090rDXWNLs2jODf+oNFZ
         RukoV7zDlD8l7s647FQYyAxFCLY6443mVbFAhk+snLel17qnU1SnLA46U9mSeZGD2Oc2
         tEYZCnCFx1cxO2KZ5t9VrZ/bXIZJ5KW7jo0MTPbke1o4v6L/ne2ihdj5ak3TOHZvfUiZ
         75EnOBqJUTL3H9uWKDA1SI0Iu8jSmjoJZHfq0L+20jC7SIfkplxTWKPgOp9g/B66a79M
         PnCw6bfhBbHBwr1QW9/ai7p63IMNdru9qhpsTJyW+lzxFjwGCb+9Q9ef2piImABJfTem
         Xvqg==
X-Gm-Message-State: AOAM530fBVg5HUJ1wofBdunJ22RHMSfMPOAQee5NVnSa9/6lEkf0Zk6X
        U6oEH/fE+fKJRgAeGKTB5zfkUEmMX6IG8g==
X-Google-Smtp-Source: ABdhPJxAbll4QmARwm0gGI+oxk2bKsRrf7LCrdlqtftLV0NpH7A8VcgH8rV+h+0p/tRyjUvmCQ9tVQ==
X-Received: by 2002:a7b:c841:: with SMTP id c1mr21981752wml.42.1642455626397;
        Mon, 17 Jan 2022 13:40:26 -0800 (PST)
Received: from [192.168.140.141] (85-222-97-180.dynamic.chello.pl. [85.222.97.180])
        by smtp.gmail.com with ESMTPSA id j21sm83422wms.14.2022.01.17.13.40.25
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jan 2022 13:40:26 -0800 (PST)
Message-ID: <5a1a7145-24c3-87c0-d887-4d8d88338f67@euro-linux.com>
Date:   Mon, 17 Jan 2022 22:40:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To:     linux-man@vger.kernel.org
From:   Alex Baranowski <alexbaranowski@euro-linux.com>
Subject: [PATCH] fixes on swapon.2 CONFIG_DEVICE_PRIVATE decreases number of,
 available swap files
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


