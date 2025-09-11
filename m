Return-Path: <linux-man+bounces-3857-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 116CCB52D5E
	for <lists+linux-man@lfdr.de>; Thu, 11 Sep 2025 11:33:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1C2056237B
	for <lists+linux-man@lfdr.de>; Thu, 11 Sep 2025 09:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E14F2E8B61;
	Thu, 11 Sep 2025 09:33:36 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from davmac.org (davmac.org [46.43.3.104])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84C12EA48B
	for <linux-man@vger.kernel.org>; Thu, 11 Sep 2025 09:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.43.3.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757583216; cv=none; b=G/0sOpRubv8BSlRz7GnpJuwX4zGvZyl0OSovJvYVv7/78U3oM8IxuDEZDNp2h/XMi7oKGcbIVFiSjf7y+uD2CVgs4LbUfNg7XTZrl6V21tJtQooI4tH4pu+fbEWIjGW75knds7BlngKGiIpHUBSeTIKT/lQAnDz7stks5ZmuU3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757583216; c=relaxed/simple;
	bh=NdQ7s4vh5YhiUZfY+aFqcYcgBwDgnK41/VSsdWdlDkk=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:From:Subject:
	 In-Reply-To:Content-Type; b=kflq3IsN9qNaNwOGRJ2w7LSng/iir9uQfu9WhFs7xvPB3XH/5bicw4MacakhUfX81hnBYp0mivAgOh2mSHzZOzAjLEZkUk5GTz0foE4Jnz2FC4MCMjmxH45o6BhJU57YB9jLENkBYj2dvSJkP26EM0C9swpfuB93AWzkVHwN/ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=davmac.org; spf=pass smtp.mailfrom=davmac.org; arc=none smtp.client-ip=46.43.3.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=davmac.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=davmac.org
Received: from [192.168.1.209] (117-20-68-65.751444.bne.nbn.aussiebb.net [117.20.68.65])
	(Authenticated sender: davmac)
	by davmac.org (Postfix) with ESMTPSA id DABB7E04AD;
	Thu, 11 Sep 2025 10:33:31 +0100 (BST)
Message-ID: <92d24905-48a6-c100-e7e6-54918b576e08@davmac.org>
Date: Thu, 11 Sep 2025 19:32:58 +1000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.0.2
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <b7f25b3a-5618-139d-9f10-ba2f6ec1dff9@davmac.org>
 <n4vyah4lmdwlfopbtk7z74jvxhgbeu764eqzhimrlt6w6bel6o@hbfw2lnzxvd6>
From: Davin McCall <davmac@davmac.org>
Subject: Re: Possible error in capabilities(7)
In-Reply-To: <n4vyah4lmdwlfopbtk7z74jvxhgbeu764eqzhimrlt6w6bel6o@hbfw2lnzxvd6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Alejandro,

On 11/9/25 6:40 pm, Alejandro Colomar wrote:
> Hi Davin,
>
> [...]
>
> Could you please execute a shell session that experiments with this and
> shows the exact behavior so that we can compare that with the wording?

I used the following C program:

--- begin ---
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/capability.h>

int main(int argc, char **argv) {
     cap_t proc_caps = cap_get_proc();
     int have_net = cap_get_ambient(CAP_NET_BIND_SERVICE);
     cap_flag_value_t have_net_fv;
     cap_flag_value_t have_chown_fv;

     int recurse = (argc != 2);

     ssize_t cap_text_len;
     char *cap_text = cap_to_text(proc_caps, &cap_text_len);
     if (cap_text == NULL) {
         perror("cap_to_text");
         return EXIT_FAILURE;
     }

     printf("Capabilities: %s\n", cap_text);

     if (cap_get_flag(proc_caps, CAP_NET_BIND_SERVICE, CAP_PERMITTED,
             &have_net_fv) != 0) {
         perror("cap_get_flag maybe failed idk");
         return EXIT_FAILURE;
     }

     printf("Have P  CAP_NET_BIND_SERVICE?: %d\n", (int)have_net_fv);

     if (cap_get_flag(proc_caps, CAP_NET_BIND_SERVICE, CAP_INHERITABLE,
             &have_net_fv) != 0) {
         perror("cap_get_flag maybe failed idk");
         return EXIT_FAILURE;
     }

     printf("Have I  CAP_NET_BIND_SERVICE?: %d\n", (int)have_net_fv);

     if (cap_get_flag(proc_caps, CAP_CHOWN, CAP_PERMITTED,
             &have_net_fv) != 0) {
         perror("cap_get_flag maybe failed idk");
         return EXIT_FAILURE;
     }

     printf("Have P  CAP_CHOWN?: %d\n", (int)have_net_fv);

     if (cap_get_flag(proc_caps, CAP_CHOWN, CAP_INHERITABLE,
             &have_net_fv) != 0) {
         perror("cap_get_flag maybe failed idk");
         return EXIT_FAILURE;
     }

     printf("Have I  CAP_CHOWN?: %d\n", (int)have_net_fv);


     cap_iab_t cap_iabs = cap_iab_get_proc();
     if (!cap_iabs) {
         perror("cap_iab_get_proc");
         return EXIT_FAILURE;
     }

     printf("Have IAB (I) CAP_NET_BIND_SERVICE? %d\n",
         cap_iab_get_vector(cap_iabs, CAP_IAB_INH, CAP_NET_BIND_SERVICE));
     printf("Have IAB (B) CAP_NET_BIND_SERVICE? %d\n",
         cap_iab_get_vector(cap_iabs, CAP_IAB_BOUND, CAP_NET_BIND_SERVICE));
     printf("Have IAB (I) CAP_CHOWN? %d\n",
         cap_iab_get_vector(cap_iabs, CAP_IAB_INH, CAP_CHOWN));
     printf("Have IAB (B) CAP_CHOWN? %d\n",
         cap_iab_get_vector(cap_iabs, CAP_IAB_BOUND, CAP_CHOWN));

     // Set the following:
     // CAP_CHOWN blocked, CAP_NET_BIND_SERVICE blocked but
     // also inheritable:
     cap_iab_t cap_txt_iabs =
cap_iab_from_text("!CAP_CHOWN,!%CAP_NET_BIND_SERVICE");

     if (!cap_txt_iabs) {
         perror("cap_iab_from_text");
         return EXIT_FAILURE;
     }

     if (cap_iab_set_proc(cap_txt_iabs) != 0) {
         perror("cap_iab_set_proc");
         return EXIT_FAILURE;
     }

     if (recurse) {
         execl(argv[0], argv[0], "norecurse", NULL);
     }

     return EXIT_SUCCESS;
}
--- end ---

So, it prints the the current "permitted" and "inherited" status of both 
CAP_NET_BIND_SERVICE and CAP_CHOWN, then removes both of them from the 
process bounds (B) but adds CAP_NET_BIND_SERVICE in the inherited vector 
(I) and re-exec's itself.

The output when run as root is as follows:

---begin---
Capabilities: =ep
Have P  CAP_NET_BIND_SERVICE?: 1
Have I  CAP_NET_BIND_SERVICE?: 0
Have P  CAP_CHOWN?: 1
Have I  CAP_CHOWN?: 0
Have IAB (I) CAP_NET_BIND_SERVICE? 0
Have IAB (B) CAP_NET_BIND_SERVICE? 0
Have IAB (I) CAP_CHOWN? 0
Have IAB (B) CAP_CHOWN? 0
Capabilities: =ep cap_net_bind_service+i cap_chown-ep
Have P  CAP_NET_BIND_SERVICE?: 1
Have I  CAP_NET_BIND_SERVICE?: 1
Have P  CAP_CHOWN?: 0
Have I  CAP_CHOWN?: 0
Have IAB (I) CAP_NET_BIND_SERVICE? 1
Have IAB (B) CAP_NET_BIND_SERVICE? 1
Have IAB (I) CAP_CHOWN? 0
Have IAB (B) CAP_CHOWN? 1
--- end ---

You can see that CAP_NET_BIND_SERVICE remains permitted afterwards 
(which must be due to it being in the Inherited vector) but CAP_CHOWN 
doesn't (it is in neither the Inherited vector nor the process 
capability bounds).

The fact that CAP_NET_BIND_SERVICE is permitted shows that capabilities 
are not masked by the bounding set as the paragraph which I think is 
erroneous states.

Is that sufficient?

Regards,

Davin



