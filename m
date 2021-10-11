Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCC664293CB
	for <lists+linux-man@lfdr.de>; Mon, 11 Oct 2021 17:48:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239137AbhJKPuz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Oct 2021 11:50:55 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:49510 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235795AbhJKPut (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Oct 2021 11:50:49 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 2D9301600C3;
        Mon, 11 Oct 2021 08:40:29 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id DcWIn9wfH9Pl; Mon, 11 Oct 2021 08:40:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 8773D1600DD;
        Mon, 11 Oct 2021 08:40:28 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id dlZPcayR6nGM; Mon, 11 Oct 2021 08:40:28 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 5D00B1600C3;
        Mon, 11 Oct 2021 08:40:28 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] timegm.3: Remove recommendation against use of
 timegm()
To:     Alejandro Colomar <alx.manpages@gmail.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <20211011111237.9414-2-alx.manpages@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Message-ID: <15d7b96d-13d0-86c1-48f3-24a637ab8e30@cs.ucla.edu>
Date:   Mon, 11 Oct 2021 08:40:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211011111237.9414-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/11/21 4:12 AM, Alejandro Colomar wrote:

> time_t portable_timegm(struct tm *tm)
> {
> 	tm->tm_isdst = 0;
> 	/*
> 	 * If another thread modifies the timezone during the
> 	 * execution of the line below, it will produce undefined
> 	 * behavior.
> 	 */
> 	return mktime(tm) - timezone;
> }

This doesn't work for multiple reasons: it's not thread-safe, mktime 
might set timezone even in a single-threaded app, and the subtraction 
might overflow.
