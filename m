Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 44CEE98073
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2019 18:45:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726828AbfHUQow (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Aug 2019 12:44:52 -0400
Received: from jojo.truelite.it ([144.76.21.38]:49896 "EHLO jojo.truelite.it"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726252AbfHUQow (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 21 Aug 2019 12:44:52 -0400
Received: from localhost (localhost.localdomain [127.0.0.1])
        by jojo.truelite.it (Postfix) with ESMTP id 6A531C1B3B;
        Wed, 21 Aug 2019 18:44:50 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at truelite.it
Received: from jojo.truelite.it ([127.0.0.1])
        by localhost (jojo.truelite.it [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id 11HOmfQrIVyV; Wed, 21 Aug 2019 18:44:48 +0200 (CEST)
Received: from [192.168.1.154] (unknown [151.61.7.163])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by jojo.truelite.it (Postfix) with ESMTPSA id DDFD6C1B27;
        Wed, 21 Aug 2019 18:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=truelite.it; s=mail;
        t=1566405888; bh=wVVKagiVo41CLBCGV8Y50zpGSgo9EI0iBX+5+mW1ut0=;
        h=To:Cc:From:Subject:Date:From;
        b=F4XzmR+vRLxCsjKwEjTF34vMtrgT3nqxLHQVFyT/zkXot2Fs05Zw5i54UbzrgiibI
         Uj3+ZthToBmRuQj+4rE5dZ97lmcDkS57dY5Xl/s8lI0WJSqQGWdsCN/P/I6FWFY0JY
         HfLFjxiehU15awbKvRc9CuJnOpxiW75AxMHTi8svSXOlzJWKpnj2EUCPIYeE4mV+ug
         qJAbPk9dKx4nOCRbhpq9oqHGOhtYbK7vNhfC4YVkn4bYzNyAWyoH2hXVMxXi9LX9Vg
         EY3joE8PiCe0mFTtY7bfingq7nkwt7FI1yHuoOSHu8ENnnpCkuvevx+2zUd7mCZVUx
         84XJFTfXJ5/rQ==
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   Simone Piccardi <piccardi@truelite.it>
Subject: fececve man page
Message-ID: <044d4f18-fe49-7e25-ddae-844ce6a50b7a@truelite.it>
Date:   Wed, 21 Aug 2019 18:44:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


In http://man7.org/linux/man-pages/man3/fexecve.3.html in the reported 
errors there are only EINVAL and ENOSYS but in the BUGS section is cited 
also ENOENT (I suppose coming from execveat) for trying to use a script.

Furthermore I think that ENOSYS should be cited as present only when 
fexecve is not implemented using execveat.

Regards
Simone
