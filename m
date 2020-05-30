Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 257E21E9098
	for <lists+linux-man@lfdr.de>; Sat, 30 May 2020 12:40:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727947AbgE3KkD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 May 2020 06:40:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725813AbgE3KkC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 30 May 2020 06:40:02 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1950FC03E969
        for <linux-man@vger.kernel.org>; Sat, 30 May 2020 03:40:02 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id x14so6701000wrp.2
        for <linux-man@vger.kernel.org>; Sat, 30 May 2020 03:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=c9jek56u3Je/Pi7hOshBLp5DuO3IFZTJ/zOXPc57l0o=;
        b=FWhPXwhxgZkB7jGumFJRkHKwIVVJFky7ZiMkkKAVOCapuYkPWJjIPmMjjrZ/Gl8HiX
         KZZdNFP/rs1tUzh03kZOM2z6eivl7cqAAko/fqhx0mcX/lbw4YldOhj7/vw1hyZESauO
         gUE8UxagnyCQY7A6D5FJmUaauyKmXomgz8mqWNENMiiY7YvUh2vEQugLObPKRZddTitM
         yIAsy/70nEAyOeU021gJsqRamtrCLtirIfUSX2BNZksErjUr9LoW2htzEs8Q3xVfQHMI
         gyU0NMS0FqeYk6y+8yMj0gqAg5wbSi7FFdawEsnRqn4S9pWevC1nN3peHiE5FMZkGpld
         /+Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=c9jek56u3Je/Pi7hOshBLp5DuO3IFZTJ/zOXPc57l0o=;
        b=YK8l1SDWzBUiTqYPq+bSTUkQKy/ejBKVTgNGwePljsnnPsd5ZsNQmGdP7raVMRTjLX
         WoWQHW5jQzSOKMA/0eIqwIMknug7UlYOTMip5RS1JwKuaGAKs6voCJVjXuITImvG8hyg
         Hcy14kJGTEa/S1uCx81r8wdJwxIjzwgN+bhnGJ6ukw1YAKToSaS0Zy7AHk6pkjbm/AmG
         Fz5Q5MADpHl9aHMabPIKMOv6WS5ekGGA14yJs0WbEZOGJ6kc4Ng3J0OatUAaj6gfq7f8
         b6NgatCpZFByYiYTWqMBJU3oDGIftKVMUUKcR75NhuuJot9yKZ08jt8kj8LYQCv3Q2dq
         7qPA==
X-Gm-Message-State: AOAM533yg410bAkjwJHv1CzkV4j31Ru09ns4h566tMMoaiB1ezbejwwq
        7iupe4LFPZg8Xw3oq155Z7lZdRx0wkk=
X-Google-Smtp-Source: ABdhPJyaPxf9bbOLvZRPlo7F+fSi87yAu2YldoGHNL3dGMQfnpKN47ZI6s+PencthnRxj4+XimtCQQ==
X-Received: by 2002:a5d:5112:: with SMTP id s18mr12588337wrt.160.1590835199067;
        Sat, 30 May 2020 03:39:59 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id o10sm13241923wrq.40.2020.05.30.03.39.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 May 2020 03:39:57 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: core man page %e
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Message-ID: <ae5293ba-17dd-fd6d-54b0-312a008e3167@jguk.org>
Date:   Sat, 30 May 2020 11:39:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello mtk

I've noticed "%e-%s.core" often gives something other than the filename and the name is truncated to 16 bytes:-

ThreadPoolServi-5.core
Chrome_InProcUt-5.core

This was set:
sysctl -w kernel.core_pattern="%e-%s.core"



In multithreaded applications it looks like %e is giving something other than the filename, perhaps a thread entry-point 
symbol name.

https://www.man7.org/linux/man-pages/man5/core.5.html

            %e  executable filename (without path prefix)

Could this be updated to:

            %e  executable filename or thread name truncated to 16 bytes

Cheers, Jonny
