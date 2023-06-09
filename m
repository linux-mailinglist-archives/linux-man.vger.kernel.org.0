Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5B197298DB
	for <lists+linux-man@lfdr.de>; Fri,  9 Jun 2023 13:58:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239298AbjFIL63 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jun 2023 07:58:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239481AbjFIL6W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jun 2023 07:58:22 -0400
X-Greylist: delayed 528 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 09 Jun 2023 04:57:51 PDT
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EBFC359E
        for <linux-man@vger.kernel.org>; Fri,  9 Jun 2023 04:57:51 -0700 (PDT)
X-mail-filterd: {"version":"1.6.0","queueID":"4QczrD0bgnz1LQL2C","contextId":
 "008f5231-7ae7-47f5-95a8-b8e7e886532d"}
Received: from [192.168.1.22] (95.65.65.81.rev.sfr.net [81.65.65.95])
        by msfrf2635.sfr.fr (SMTP Server) with ESMTP id 4QczrD0bgnz1LQL2C;
        Fri,  9 Jun 2023 13:49:00 +0200 (CEST)
X-mail-filterd: {"version":"1.6.0","queueID":"4QczrC5mfXz1LQKdZ","contextId":
 "bdbb8821-1c4a-4664-aaa2-75283c820b42"}
X-sfr-mailing: LEGIT
X-sfr-spamrating: 40
X-sfr-spam: not-spam
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=waika9.com; s=202006;
 t=1686311340; h=Date:To:Cc:From:Subject; bh=+HaS4cVcesU3C3QKYZkT0TflruIBTq//o
  2c9G9OauY8=; b=feNujiyAiEdHkji7MuAuCmvLhhEVemIEAVHu1eMeRG9KuW+KxPnccophPbNT7
  OOQ8BI6Dgrfy1Ouh5Iyrix5g+gjcUPx8Jco9Oz/dVYYOpGj0SVtB27aztJKGirrVkO9zc9r+/h2Z
  MIc3oiK4jR5UiLrh8apSK+Ap0ohxusMacoYwHbjNNsNB9QSKCmt+Zr+j847ZUIMuXvMpvPsKyzGE
  NJbsN6nsQtIIcXFotE2w3t9rKeI86/pjarF0wlrrm0GY4cjkfjgTb0N4xFrNvojnBqQlomF/byIi
  sh1BQMj6aosTgBLTuB+IrkehFyvjLXFCRZPusRXvY094u5kewuaNw==
Received: from [192.168.1.22] (95.65.65.81.rev.sfr.net [81.65.65.95])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: lucien.gentis@waika9.com)
        by msfrf2635.sfr.fr (SMTP Server) with ESMTPSA id 4QczrC5mfXz1LQKdZ;
        Fri,  9 Jun 2023 13:48:59 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN) smtp.auth=lucien.gentis@waika9.com
Message-ID: <f9c9f278-8914-058b-b612-a205d4a0b035@waika9.com>
Date:   Fri, 9 Jun 2023 13:48:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: fr
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Glibc <libc-alpha@sourceware.org>
From:   Lucien Gentis <lucien.gentis@waika9.com>
Subject: manpages - typo in intro.3.pot
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

intro.3.pot - line 380:

"shopuld be placed" instead of "should be placed"

Regards

Lucien

