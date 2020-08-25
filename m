Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60AA62516E4
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 12:51:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729881AbgHYKvW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 06:51:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729458AbgHYKvV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 06:51:21 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 555ECC061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 03:51:21 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id u18so1930037wmc.3
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 03:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=63WKAWKt8TRAn5gRD/9/zdtT89AcQKhw2DTINTIfzIA=;
        b=UiZNC0DPY/sWk18Z8G3Aalx+yUfTqXljBBquOzUeSddGB/DOVoeL0g2gZyVf7yUqke
         I5VUcuJX3LirtA4bQPf0Dc2OqUHCGx9NtutcJKlCmv5ZmnCeNc4Y5B7Q0vYkQvhN6tw9
         cz7SfRCQOPInEkmJUY3g1cBR7mld9kY5VVmfLAirt5IZzM21DgPKbgyHQMANOc4T/K4i
         ZJh/j+XHYHFEzvNq2rh8gBp59k2tB8WH/sRDi2nLnekAWf5oZQYXXLC1m7WlL85SSV/x
         aW2pnHY+xJLCEDaGXot/4P+wmQ/IguSI66L/jD4CUo0X6lCrYusaqjPRwYdmFJw6sw27
         M8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=63WKAWKt8TRAn5gRD/9/zdtT89AcQKhw2DTINTIfzIA=;
        b=CUxFFvsGZ0JHY168PCGtad2fce4DKMiBwTeFez4zGDIsTN0n9tX1h9pDJ/yV3sRuOG
         ha9B7BGAnbdO4g/JlU9qMjzR/iCcVrmO1xrHXBXSFZy0ELK40kEeV2JFCQ2Y3eLkOfjL
         Xewi9fla3yp3ArFwahkSc8SNmnhMhlNQdN8KeEnS/oVNdJKRIu0UlHGwk1RKKdovikA+
         q2LhVeMl3xLfFv+QaqjQJFED+sQ9hbiG8bLfvXlA69wIBAPajBJFOmxvafzJkZGQv1CV
         d1DY9f6JNnfptNG17jLRyazeOGJwZ2EyYmF6gzasnWiXvVJoAO4XzMkHH33OlAIobRwr
         IaxA==
X-Gm-Message-State: AOAM533qd3xdIC+gZJwgdr6V2dD+C9qUNCptjMcuCwEzaawitymM8U3U
        QnxVYMriPXU7dLXvckk0drpC8OKbhAg=
X-Google-Smtp-Source: ABdhPJxqROccD2QfqUsgknUNmJCU//ir+ZrMQSRrwkgRe7EMztOZNlwt18y9jc/btC42TYZhUgQd/A==
X-Received: by 2002:a7b:c772:: with SMTP id x18mr1503827wmk.32.1598352678368;
        Tue, 25 Aug 2020 03:51:18 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id y16sm178433wrp.48.2020.08.25.03.51.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 03:51:17 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [bug] Makefile: Broken link
Message-ID: <6cf23265-7ed5-4a33-accf-5c0e8f67f85f@gmail.com>
Date:   Tue, 25 Aug 2020 12:51:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Line 32 on the Makefile has a broken link in a comment:

https://lintian.debian.org/tags/manpage-has-errors-from-man.html

I found a google cached copy:

https://webcache.googleusercontent.com/search?q=cache:_t5GTxkpo5wJ:https://lintian.debian.org/tags/manpage-has-errors-from-man.html

The copy is very recent (21-aug-2020), so it may be broken only
temporarily.


Alex.
