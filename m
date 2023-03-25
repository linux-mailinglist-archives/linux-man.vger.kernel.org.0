Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA10B6C8FE9
	for <lists+linux-man@lfdr.de>; Sat, 25 Mar 2023 18:52:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230223AbjCYRww (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Mar 2023 13:52:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229952AbjCYRww (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Mar 2023 13:52:52 -0400
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [IPv6:2001:bc8:228b:9000::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7029E060
        for <linux-man@vger.kernel.org>; Sat, 25 Mar 2023 10:52:47 -0700 (PDT)
Received: from [IPV6:2a02:8109:aa40:4e0:b5c6:9671:3477:8fde]
        by sdfg.com.ar (chasquid) with ESMTPSA
        tls TLS_AES_128_GCM_SHA256
        (over submission+TLS, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
        ; Sat, 25 Mar 2023 17:52:43 +0000
Message-ID: <db1c3d06-36e9-af5e-f3c8-d3c54463e1a5@sdfg.com.ar>
Date:   Sat, 25 Mar 2023 18:52:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] user_namespaces.7: Add note about PR_SET_DUMPABLE on
 nested userns
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>
References: <20230308161744.iqr3kllrvgkgo5tn@wittgenstein>
 <20230308170352.68915-1-rodrigo@sdfg.com.ar>
Content-Language: en-US
From:   Rodrigo Campos <rodrigo@sdfg.com.ar>
In-Reply-To: <20230308170352.68915-1-rodrigo@sdfg.com.ar>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.0 required=5.0 tests=NICE_REPLY_A,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/8/23 18:03, Rodrigo Campos wrote:
> In order to create a nested user namespace, we need to re-set the
> PR_SET_DUMPABLE attribute after switching the effective UID/GID. Clarify
> this in the section about nested user namespaces.
> 
> Having this note would have saved me some time debugging.
> 
> Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
> ---
> 
> Thanks, so how about this instead?

Friendly ping :)
