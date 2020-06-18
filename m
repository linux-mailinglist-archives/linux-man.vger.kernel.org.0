Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BC031FFBE2
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 21:37:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728157AbgFRTh5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 15:37:57 -0400
Received: from gateway33.websitewelcome.com ([192.185.146.70]:20096 "EHLO
        gateway33.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728069AbgFRTh4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Jun 2020 15:37:56 -0400
X-Greylist: delayed 1262 seconds by postgrey-1.27 at vger.kernel.org; Thu, 18 Jun 2020 15:37:56 EDT
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
        by gateway33.websitewelcome.com (Postfix) with ESMTP id C2FE8528D04
        for <linux-man@vger.kernel.org>; Thu, 18 Jun 2020 14:16:52 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id m01sjHNXehmVTm01sj9qv4; Thu, 18 Jun 2020 14:16:52 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:49422 helo=localhost)
        by gator3278.hostgator.com with esmtpa (Exim 4.93)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1jm01r-000yjh-Pu; Thu, 18 Jun 2020 14:16:52 -0500
Date:   Thu, 18 Jun 2020 21:16:44 +0200
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     Walter Harms <wharms@bfs.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] fread.3: return value
Message-ID: <20200618191644.v74spg2nquf4qtyv@comp.lan>
References: <20200616182659.12365-1-arkadiusz@drabczyk.org>
 <20200616190017.5y3pwpb22w2jeqls@jwilk.net>
 <20200616225034.e4uzibuemo7lpmet@comp.lan>
 <3294b2a2fae14460984e2f3162f7ec35@bfs.de>
 <20200617173010.vekk35vrslmtdm6r@comp.lan>
 <4d901a75517246baa6a5f82f291c0595@bfs.de>
 <20200618114344.rsgecwlvpmesfa7a@comp.lan>
 <726938c5daec4d5fbe7e85a121eff984@bfs.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <726938c5daec4d5fbe7e85a121eff984@bfs.de>
User-Agent: NeoMutt/20180716
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1jm01r-000yjh-Pu
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (localhost) [89.69.237.178]:49422
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 4
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jun 18, 2020 at 02:32:02PM +0000, Walter Harms wrote:
> >If the requested size is 4 but there are only 3 bytes left then
> >fread() will return 0, no matter what's the value of nmemb because
> >it's not able to read even a single item and feof() will return
> >non-zero. I think that this is explained clearly enough in the
> >manpage.
> 
> IMHO i would be more clear to drop that "short item count". 
> "If an error occurs, or the end of the file is reached, the  return value is zero"

But the thing is that return value does not have to be zero, at least
when the end of the file is reached. Check this:

#include <stdio.h>
#include <stdlib.h>

int main(void)
{
  FILE *fp = fopen("/bin/sh", "rb");
  if (!fp) {
    perror("fopen");
    return EXIT_FAILURE;
  }

  fseek(fp, -10, SEEK_END);

  unsigned char buffer[12];

  size_t ret = fread(buffer, 4, 3, fp);
  if (ret != 3) {
    fprintf(stderr, "fread() failed: %zu\n", ret);
    printf("feof: %d\n", feof(fp) ? 1 : 0);
    exit(EXIT_FAILURE);
  }

  fclose(fp);

  exit(EXIT_SUCCESS);
}

Output:

fread() failed: 2
feof: 1

> >That is interesting. POSIX
> >https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/ says
> >that "If a partial element is read, its value is unspecified.". But as
> >fread() returns number of items it has successfully read the returned
> >value should always be checked and it's different than requested nmemb
> >it means an error and I guess there is no way to tell how many bytes
> >have been partially read - for example if size == 4 and nmemb == 1 and
> >returned value is 0 you don't know if fread() read 1, 2 or 3 bytes.
> 
> the GNU version fills the buffer with the remaining bytes

And so does libuClibc-0.9.33.2 and musl 1.1.20-git-79-gd6c855c that I
have at hand. It's probably the easiest implementation of fread(). 

> but returns 0.

That's not always the case as I showed above.

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
